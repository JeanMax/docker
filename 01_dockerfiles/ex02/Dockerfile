FROM ruby:2.4
RUN apt-get update && apt-get install -y nodejs
RUN gem install rails
ONBUILD RUN mkdir /opt/app
ONBUILD ADD . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install && rake db:create && rake db:migrate
ONBUILD EXPOSE 3000

# dl a ruby app in the folder eg: https://github.com/tpayet/showerails
# docker build . -t ft-rails:on-build
# rm Dockerfile
# add subject dockerfile
# docker build .
# docker run -p 3000:3000 -d <HASH>
