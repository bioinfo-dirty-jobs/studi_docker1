FROM ruby:2.4-alpine
RUN apk add --no-cache build-base gcc bash cmake
RUN gem install jekyll
EXPOSE 4000 
WORKDIR /site
# create new site by setting -e JEKYLL_NEW=true ENV JEKYLL_NEW false
ENV JEKYLL_NEW false
CMD ["jekyll" ,"serve", "--watch", "--incremental"]
