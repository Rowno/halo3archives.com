FROM ubuntu:16.04

LABEL name="halo3archives.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      gcc \
      make \
      nginx \
      ruby \
      ruby-dev
RUN gem install jekyll

COPY _docker /

COPY . /app
WORKDIR /app

RUN make build
RUN chown -R www-data:www-data /app/_site

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
