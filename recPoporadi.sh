drive_id=$1
today=$(date "+%Y%m%d")

./rec_radiko.sh QRR 31 . "ご注文はラジオですか？？～チマメ隊のポポロンラジオ～"
python3 setTag.py "ご注文はラジオですか？？～チマメ隊のポポロンラジオ～"
filename="ご注文はラジオですか？？～チマメ隊のポポロンラジオ～_${today}.mp3"
gdrive upload $filename -p $1
