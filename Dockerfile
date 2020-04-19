FROM python:3.8

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==1.1.2 uWSGI==2.0.18 requests==2.23.0 redis==3.4.1
WORKDIR /app
COPY app /app
copy cmd.sh /

EXPOSE 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
