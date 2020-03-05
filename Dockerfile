FROM python:3.6
RUN mkdir /app
WORKDIR /app
#ADD requirements.txt /code/
#RUN pip install --no-cache-dir -r requirements.txt
ADD app/ /app/
RUN mkdir -p /media
WORKDIR /media
VOLUME /media

CMD [ "python3", "/app/postServer.py", "8000", "upload:gogo","/app/server.pem" ]
