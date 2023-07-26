FROM debian:12
MAINTAINER Philip Washington Sorst <philip@sorst.net>

WORKDIR /opt/

RUN set -xe \
&& apt update \
&& apt install -qy --no-install-recommends \
    perl \
    curl \
    ca-certificates \
    build-essential \
    fonts-sil-charis \
&& echo | cpan \
&& cpan install chordpro \
&& chordpro --version

WORKDIR /opt/chordpro/

CMD ["chordpro"]
