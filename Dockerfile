# syntax = docker/dockerfile:1.3-labs

FROM ruby:3.2-slim
COPY Gemfile* ./
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=Asia/Tokyo \
    RAILS_ROOT=/opt/app
WORKDIR $RAILS_ROOT
RUN <<EOF
apt-get update -qq
apt-get install -y build-essential
EOF
COPY Gemfile* ./
RUN bundle install
COPY . ./
CMD ["rails", "s", "-b", "0.0.0.0"]
