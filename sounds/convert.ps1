# set /p "url=Enter URL: "
# set /p "file=Enter file name: "

# start /WAIT /B ytdl -o temp.mp4 -q lowest %url%
# start /WAIT /B ffmpeg -i "temp.mp4" -ac 1 -ar 48000 -acodec pcm_u8 "%file%.wav"
# start /WAIT /B del temp.mp4

# echo "%file%.wav is done"

$url = Read-Host -Prompt 'Enter URL: '
$file = Read-Host -Prompt 'Enter file name: '

& ytdl -o temp.mp4 -q lowest $url
& ffmpeg -i "temp.mp4" -ac 1 -ar 48000 -acodec pcm_u8 "$file.wav"
& del temp.mp4

echo "$file.wav is done"