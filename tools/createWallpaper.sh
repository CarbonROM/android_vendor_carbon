#!/bin/bash
export input=$1
convert ${input} -resize '1243x1024^' -gravity center -crop 1243x1024+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-nodpi/default_wallpaper.png
pngquant -f --speed 1 --strip --skip-if-larger overlay/common/frameworks/base/core/res/res/drawable-nodpi/default_wallpaper.png --ext .png
convert ${input} -resize '2331x1920^' -gravity center -crop 2331x1920+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-sw600dp-nodpi/default_wallpaper.png
pngquant -f --speed 1 --strip --skip-if-larger overlay/common/frameworks/base/core/res/res/drawable-sw600dp-nodpi/default_wallpaper.png --ext .png
convert ${input} -resize '2880x2560^' -gravity center -crop 2880x2560+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-sw720dp-nodpi/default_wallpaper.png
pngquant -f --speed 1 --strip --skip-if-larger overlay/common/frameworks/base/core/res/res/drawable-sw720dp-nodpi/default_wallpaper.png --ext .png
