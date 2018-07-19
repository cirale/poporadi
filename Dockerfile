FROM python:3

RUN apt update && apt -y upgrade
RUN apt install -y swftools rtmpdump libxml2 wget ffmpeg lame curl
RUN apt install -y python3 python-pip
RUN pip install -y  mutagen

# install gdrive
curl -L "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download" --output /usr/local/bin/gdrive-linux-x64
chmod +x /usr/local/bin/gdrive-linux-x64
COPY ~/.gdrive/ /root/

RUN mkdir /app
COPY . /app
WORKDIR /app

CMD ["bash","recPoporadi.sh"]

# this file WIP! Don't try.