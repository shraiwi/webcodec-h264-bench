
mkdir "%cd%/avc1_42002a" "%cd%/avc1_4d002a" "%cd%/avc1_64002a"

ffmpeg -c:v h264_cuvid -i "%cd%/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v baseline -bsf h264_mp4toannexb "%cd%/avc1_42002a/%%03d.h264"
ffmpeg -c:v h264_cuvid -i "%cd%/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v main     -bsf h264_mp4toannexb "%cd%/avc1_4d002a/%%03d.h264"
ffmpeg -c:v h264_cuvid -i "%cd%/srcvid.h264" -f image2 -b:v 10M -c:v h264_nvenc -profile:v high     -bsf h264_mp4toannexb "%cd%/avc1_64002a/%%03d.h264"