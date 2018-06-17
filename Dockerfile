FROM ubuntu:18.04

# install python3
RUN apt -y update && apt -y upgrade
RUN apt -y install python3

# install gdrive
# working now!

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN chmod +x ./recPoporadi.sh
RUN ./recPoporadi.sh
