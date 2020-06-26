# Dependencies: youtube-dl

# Arguments used:
# -f                        : Changes video format to 136, 720p in this case
# --abort-on-error          : Ignores erros
# --max-filesize 1GB        : Maximum file size
# --yes-playlist            : Downloads playlists as well
# -r 1.0M                   : Maximum download rate 1MBps
# -R 4                      : Retries download only 4 times
# --restrict-filesnames     : Don't allow dumbass characters
# -w                        : Do not overwrite files
# --write-info-json         : Writes metadata into a file
# --prefer-free-formats     : Prefers free formats? 


# "-s  \"                   : SIMULATE MODE
# Config file save location: /etc/youtube-dl.conf

echo "---------------------------------------------"
echo "-------Youtube Channel Download Script-------"
echo "---------------------------------------------"
echo "Enter YouTube Channel URL: "
read youtubeURL
echo "This will download all videos on the channel entered above...continue? (Y/N)"
read yesNo
if [ $yesNo = "Y" ] || [ $yesNo = "y" ]; then
    youtube-dl -f 136 --abort-on-error --yes-playlist -r 1.0M -R 4 --restrict-filenames -w --write-info-json --prefer-free-formats -o "%(title)s.%(ext)s" $youtubeURL
else
    echo "Mission Aborted!"
fi

echo "Complete"
