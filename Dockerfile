FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim libfontconfig less

EXPOSE 3000
COPY docker-entrypoint.sh /
CMD ["/docker-entrypoint.sh"]
