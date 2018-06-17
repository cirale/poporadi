today=$(date "+%Y%m%d")

./rec_radiko.sh QRR 31 . "ご注文はラジオですか？？～チマメ隊のポポロンラジオ～"
python3 ./setTag.py "ご注文はラジオですか？？～チマメ隊のポポロンラジオ～"
filename="ご注文はラジオですか？？～チマメ隊のポポロンラジオ～_${today}.mp3"
directoryId=`gdrive-linux-x64 list --query "mimeType='application/vnd.google-apps.folder' and name='ご注文はラジオですか？？～チマメ隊のポポロンラジオ～'" | awk '!/Id/{print $1}'`
gdrive-linux-x64 upload $filename -p $directoryId
