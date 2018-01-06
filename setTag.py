from mutagen.easyid3 import EasyID3
import datetime
import sys

prefix = sys.argv[1]
now = datetime.datetime.now()

path = '{0}_{1}.mp3'.format(prefix,now.strftime("%Y%m%d"))
tags = EasyID3(path)
tags['title'] = prefix
tags['artist'] = "水瀬いのり　徳井青空　村川梨衣"
tags['album'] = prefix
tags['genre'] = "文化放送"

tags.save()