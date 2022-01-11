
# avc
mkdir "$PWD/avc1_42002a" "$PWD/avc1_4d002a" "$PWD/avc1_64002a"
ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v baseline "$PWD/avc1_42002a/%03d.h264"
ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v main     "$PWD/avc1_4d002a/%03d.h264"
ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v high     "$PWD/avc1_64002a/%03d.h264"

# hevc (scrapped)
#mkdir "$PWD/hev1_1_2_L123" "$PWD/hev1_1_2_L153" "$PWD/hev1_1_2_L183"
#ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v hevc_nvenc -level:v 4.1        "$PWD/hev1_1_2_L123/%03d.h265"
#ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v hevc_nvenc -level:v 5.1        "$PWD/hev1_1_2_L153/%03d.h265"
#ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v hevc_nvenc -level:v 6.1        "$PWD/hev1_1_2_L183/%03d.h265"

# vp9
mkdir "$PWD/vp09_00_40_08_00_01_01_01_00"
ffmpeg -c:v h264_cuvid -i "$PWD/srcvid.h264" -f image2 -b:v 10M -c:v libvpx-vp9 -level:v 4.1 "$PWD/vp09_00_40_08_00_01_01_01_00/%03d.vp9"
