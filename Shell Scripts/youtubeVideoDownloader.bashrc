echo "---------------------------------------------"
echo "-----------Youtube Download Script-----------"
echo "---------------------------------------------"
echo "Enter YouTube URL: "
read youtubeURL
echo "This will download the YouTube video entered above...continue? (Y/N)"
read yesNo
if [ $yesNo = "Y" ] || [ $yesNo = "y" ]; then
    youtube-dl -f best --abort-on-error --yes-playlist -r 1.0M -R 4 --restrict-filenames -w --write-info-json --prefer-free-formats $youtubeURL
else
    echo "Mission Aborted!"
fi

# Config file save location: /etc/youtube-dl.conf
echo "Complete"