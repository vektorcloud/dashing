FROM quay.io/vektorcloud/ruby:latest

RUN apk add --no-cache g++ make nodejs && \
    gem install dashing && \
    dashing new data && \
    cd /data && bundle && \
    apk del g++ make

EXPOSE 3000
WORKDIR /data
CMD ["dashing", "start"]
