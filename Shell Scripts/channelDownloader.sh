echo "---------------------------------------------"
echo "-----------Youtube Download Script-----------"
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

# Config file save location: /etc/youtube-dl.conf
echo "Complete"