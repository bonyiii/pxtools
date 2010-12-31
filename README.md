## A little overlay for [Pxtools][pxtools]

The pxtools are a set of tools to convert a Paradox-database into a SQL-database (MySQL, PostgreSQL), CSV or XML.

Pxtools is written from scratch and has no external dependencies.

[pxtools]: http://jan.kneschke.de/projects/pxtools/

Copy paste how to 
# clone the GIT repository
git clone git://github.com/bonyiii/pxtools.git /usr/local/portage/dev-db

# add the overlay to your make.conf
cat >> /etc/make.conf <<\EOF
PORTDIR_OVERLAY="${PORTDIR_OVERLAY} /usr/local/portage/dev-db"
EOF

# install pxtools
emerge -av pxtools