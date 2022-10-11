#!/bin/bash

function show_help() {
    echo "emu [global options] (init|start|stop) [command options]"
    echo
    echo "Wrapper script to make Cuttlefish easy to run. Must run \"emu init\" once per host before \"emu start\" will work."
    echo "The simplest usage is just \"emu start\". It uses sane defaults. Once the emulator boots, a VNC viewer should appear. Closing this VNC viewer will not stop the emulator."
    echo "To stop the emulator, just run \"emu stop\". The init and stop commands do not have any options."
    echo
    echo "  Global options"
    echo
    echo -e "\t--help,-h\t\tShow this help message and exit."
    echo -e "\t--verbose,-v\t\tEnables verbose output."
    echo
    echo "  \"start\" command options"
    echo
    echo -e "\t--formfactor,--ff,-f\tSet a predefined form factor for the emulated device. Options are \"phone\", \"tablet\", and \"desktop\". This option is overridden with --dpi and --resolution. Defaults to \"phone\"."
    echo -e "\t--resolution,--res,-r\tSet the emulated device's screen resolution. Typically used with --dpi. Use of this option will override --formfactor."
    echo -e "\t--dpi,-d\t\tSet the emulated device's screen DPI. Typcially used with --resolution. Use of this option will override --formfactor."
    echo -e "\t--cores,--cpu,-c\tSet the emulator's allocated number of CPU cores. Defaults to \"4\"."
    echo -e "\t--memory,--mem,-m\tSet the emulator's allocated memory. Defaults to \"4g\"."
}

acloud=$(command -v acloud-carbon)
if [[ $acloud == "" ]]; then
    echo "acloud-carbon: command not found. Is prebuilts/tools-carbon present?" 1>&2
    exit 1
fi

grep -q -w "vmx\|svm" /proc/cpuinfo
if [[ $? != 0 ]]; then
    echo "Make sure virtualization features are enabled in your BIOS. Look for Intel Virtualization Technology or SVM Mode on AMD chipsets." 1>&2
    exit 1
fi

pacman=$(command -v pacman)
if [[ $pacman != "" ]] && ! [ -f /usr/lib/systemd/system/cuttlefish-host-resources.service ]; then
    echo "Arch Linux detected. Please install cuttlefish-common-git from the AUR and run systemctl enable --now cuttlefish-host-resources.service." 1>&2
    exit 1
fi

systemctl is-active cuttlefish-host-resources.service >/dev/null
if [[ $? != 0 ]]; then
    echo "Make sure to run systemctl enable --now cuttlefish-host-resources.service." 1>&2
    exit 1
fi

verbose=0
init=0
start=0
stop=0
formfactor=
resolution=
dpi=
cores=4
memory=4g

while [[ $1 != "" ]]; do
    case "$1" in
      -h|--help) show_help; exit 0;;
      -v|--verbose) verbose=1; shift;;
      init) init=1; shift;;
      start) start=1; shift;;
      stop) stop=1; shift;;
      -f|--ff|--formfactor) shift; formfactor=$1; shift;;
      -r|--res|--resolution) shift; resolution=$1; shift;;
      -d|--dpi) shift; dpi=$1; shift;;
      -c|--cpu|--cores) shift; cores=$1; shift;;
      -m|--mem|--memory) shift; memory=$1; shift;;
      -*) echo "Unrecognized option: $1" 1>&2; show_help; exit 1;;
    esac
done

n_pos=0

if [[ $init == 1 ]]; then
    n_pos=$((n_pos+1))
fi

if [[ $start == 1 ]]; then
    n_pos=$((n_pos+1))
fi

if [[ $stop == 1 ]]; then
    n_pos=$((n_pos+1))
fi

if [[ $n_pos > 1 ]]; then
    echo "Too many positional arguments. Choose one of \"init\", \"start\" or \"stop\"." 1>&2
    exit 1
fi

if [[ $n_pos == 0 ]]; then
    echo "No command specified. Choose one of \"init\", \"start\" or \"stop\"." 1>&2
    show_help
    exit 1
fi

if [[ $init == 1 ]]; then
    acloud_args="setup --host"
    if [[ $pacman != "pacman not found" ]] && ! [ -f /usr/lib/systemd/system/cuttlefish-common.service ]; then
        echo "Arch Linux detected. Please install cuttlefish-common-git from the AUR and run systemctl enable --now cuttlefish-common.service and retry \"emu init\" again" 1>&2
        exit 1
    fi
fi

if [[ $stop == 1 ]]; then
    acloud_args="delete --local-only"
fi

if [[ $start == 1 ]]; then
    if [[ $dpi != "" ]] || [[ $resolution != "" ]]; then
        if [[ $formfactor != "" ]]; then
            echo "Cannot specify both --formfactor and --dpi/--resolution." 1>&2
            exit 1
        fi
    else
        if [[ $formfactor == "" ]]; then
            formfactor=phone
        fi

        if [[ $formfactor != "desktop" ]] && [[ $formfactor != "tablet" ]] && [[ $formfactor != "phone" ]]; then
            echo "Unrecognized formfactor: $formfactor." 1>&2
            exit 1
        fi

        if [[ $formfactor != "desktop" ]]; then
            resolution=1920x1080
            dpi=240
        fi
        if [[ $formfactor != "tablet" ]]; then
            resolution=1080x1920
            dpi=480
        fi
        if [[ $formfactor != "phone" ]]; then
            resolution=1080x1920
            dpi=640
        fi
    fi

    acloud_args="create --local-instance --gpu --local-image --hw-property cpu:$cores,memory:$memory,resolution:$resolution,dpi:$dpi"
fi

if [[ $verbose == 1 ]]; then
    acloud_args="$acloud_args -v"
fi

exec $acloud $acloud_args
