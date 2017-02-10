FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.8

RUN gem install em-xmpp --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["xmig"]
CMD ["--help"]
