## A little overlay for [Pxtools][pxtools]

The pxtools are a set of tools to convert a Paradox-database into a SQL-database (MySQL, PostgreSQL), CSV or XML.

Pxtools is written from scratch and has no external dependencies.

[pxtools]: http://jan.kneschke.de/projects/pxtools/

Copy paste how to:
    mkdir -p /usr/local/portage

    # clone the GIT repository
    git clone git://github.com/bonyiii/pxtools.git /usr/local/portage

    # add the overlay to your make.conf
    cat >> /etc/make.conf <<\EOF
    PORTDIR_OVERLAY="${PORTDIR_OVERLAY} /usr/local/portage"
    EOF

    # install pxtools
    emerge -av pxtools

Useage example :

    #!/bin/bash
    # enca -L hungarian FILE.name

    for FILE in `find .  -name "*.DB"`
    do
      pxcsvdump -f $FILE -D \| | iconv -f IBM852 -t cp1250 | tr "ß" "á"  > `echo "$FILE" | sed -e 's/DB/csv/' | tr "[:upper:]" "[:lower:]"`
    done
