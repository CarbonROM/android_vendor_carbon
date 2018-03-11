#!/bin/bash
export input=$1
convert ${input} -resize '1080x960^' -gravity center -crop 1080x960+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-hdpi/default_wallpaper.png
convert ${input} -resize '960x800^' -gravity center -crop 960x800+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-nodpi/default_wallpaper.png
convert ${input} -resize '1920x1280^' -gravity center -crop 1920x1280+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-sw600dp-nodpi/default_wallpaper.png
convert ${input} -resize '1920x1280^' -gravity center -crop 1920x1280+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-sw720dp-nodpi/default_wallpaper.png
convert ${input} -resize '1440x1280^' -gravity center -crop 1440x1280+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-xhdpi/default_wallpaper.png
convert ${input} -resize '2160x1920^' -gravity center -crop 2160x1920+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-xxhdpi/default_wallpaper.png
convert ${input} -resize '2880x2560^' -gravity center -crop 2880x2560+0+0 +repage overlay/common/frameworks/base/core/res/res/drawable-xxxhdpi/default_wallpaper.png