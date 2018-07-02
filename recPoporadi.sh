today=$(date "+%Y%m%d")
programName="ご注文はラジオですか？？～WELCOME【う・さ！】～"
artist="佐倉綾音 種田梨沙 佐藤聡美 内田真礼"

./rec_radiko.sh QRR 31 . $programName
python3 ./setTag.py $programName $artist
filename="ご注文はラジオですか？？～WELCOME【う・さ！】～_${today}.mp3"
directoryId=`/usr/local/bin/gdrive-linux-x64 list --query "mimeType='application/vnd.google-apps.folder' and name='ご注文はラジオですか？？～WELCOME【う・さ！】～'" | awk '!/Id/{print $1}'`
/usr/local/bin/gdrive-linux-x64 upload $filename -p $directoryId
if [ $? -eq 0 ]; then
    rm $filename
fi
