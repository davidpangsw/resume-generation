name=master
pandoc $name.md \
  -o $name.pdf \
  --css=resume_style.css \
  --pdf-engine=wkhtmltopdf \
  --pdf-engine-opt=--margin-top \
  --pdf-engine-opt=20px \
  --pdf-engine-opt=--margin-bottom \
  --pdf-engine-opt=20px \
  --pdf-engine-opt=--margin-left \
  --pdf-engine-opt=20px \
  --pdf-engine-opt=--margin-right \
  --pdf-engine-opt=20px \
&& page_count=$(pdfinfo $name.pdf | grep '^Pages:' | awk '{print $2}') \
&& [ "$page_count" -gt 2 ] && exit 0 \
|| open $name.pdf &