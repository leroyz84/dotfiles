#!/bin/sh

LINES=50

case "$1" in
    *.pdf) pdftotext "$1" - ;;
    *.tar|*.tar.gz|*.tgz) echo "Tar contents:" ; tar tf "$1"  ;;
    *.zip|*.jar|*.war|*.ear|*.oxt) unzip -l "$1";;
    *.pem|*.crt) openssl x509 -in "$1" -noout -subject -issuer -dates -ext subjectAltName ;;
    *) cat -n "$1" ;;
esac


#	*.tgz|*.tar.gz) tar tzf "$1";;
#	*.tar.bz2|*.tbz2) tar tjf "$1";;
#	*.tar.txz|*.txz) xz --list "$1";;
#	*.tar) tar tf "$1";;
#	*.zip|*.jar|*.war|*.ear|*.oxt) unzip -l "$1";;
#	*.rar) unrar l "$1";;
#	*.7z) 7z l "$1";;
#	*.[1-8]) man "$1" | col -b ;;
#	*.o) nm "$1" | less ;;
#	*.torrent) transmission-show "$1";;
#	*.iso) iso-info --no-header -l "$1";;
#	*odt,*.ods,*.odp,*.sxw) odt2txt "$1";;
#	*.doc) catdoc "$1" ;;
#	*.docx) docx2txt "$1" - ;;
#	*.csv) cat "$1" | sed s/,/\\n/g ;;
#	*.pdf)
#		CACHE=$(mktemp /tmp/thumbcache.XXXXX)
#		pdftoppm -png -f 1 -singlefile "$1" "$CACHE"
#		$HOME/.config/lf/image draw "$CACHE.png" $num 1 $numb $numc
#		;;
#	*.epub)
#		CACHE=$(mktemp /tmp/thumbcache.XXXXX)
#		epub-thumbnailer "$1" "$CACHE" 1024
#		$HOME/.config/lf/image draw "$CACHE" $num 1 $numb $numc
#		;;
#	*.bmp|*.jpg|*.jpeg|*.png|*.xpm)
#		$HOME/.config/lf/image draw "$1" $num 1 $numb $numc
#		;;
#	*.wav|*.mp3|*.flac|*.m4a|*.wma|*.ape|*.ac3|*.og[agx]|*.spx|*.opus|*.as[fx]|*.flac) exiftool "$1";;
#	*.avi|*.mp4|*.wmv|*.dat|*.3gp|*.ogv|*.mkv|*.mpg|*.mpeg|*.vob|*.fl[icv]|*.m2v|*.mov|*.webm|*.ts|*.mts|*.m4v|*.r[am]|*.qt|*.divx)
#		CACHE=$(mktemp /tmp/thumbcache.XXXXX)
#		ffmpegthumbnailer -i "$1" -o "$CACHE" -s 0
#		$HOME/.config/lf/image draw "$CACHE" $num 1 $numb $numc
#		;;
