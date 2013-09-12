FROM base

RUN apt-get -y update
RUN apt-get install -y ca-certificates wget encfs
RUN cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

CMD ["~/.dropbox-dist/dropboxd"]
