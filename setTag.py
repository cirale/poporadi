from mutagen.easyid3 import EasyID3
import datetime
import sys

prefix = sys.argv[1]
now = datetime.datetime.now()
artist = sys.argv[2]

path = '{0}_{1}.mp3'.format(prefix,now.strftime("%Y%m%d"))
tags = EasyID3(path)
tags['title'] = prefix
tags['artist'] = artist
tags['album'] = prefix

tags.save()
