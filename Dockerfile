FROM python:3

RUN apt update
RUN apt install -y swftools rtmpdump libxml2 wget ffmpeg lame curl
#RUN apt install -y python3 python-pip
RUN pip install mutagen

# install gdrive
RUN curl -L "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download" --output /usr/local/bin/gdrive-linux-x64
RUN chmod +x /usr/local/bin/gdrive-linux-x64
COPY ~/.gdrive/ /root/
#todo: ↑error source path is full path

RUN mkdir /app
COPY . /app
WORKDIR /app

CMD ["bash","recPoporadi.sh"]
