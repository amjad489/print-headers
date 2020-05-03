FROM python:3.7.3-alpine3.8
RUN apk add --update \
    netcat-openbsd \
    curl \
    && rm -rf /var/cache/apk/*
WORKDIR /usr/src/app
COPY app.py ./
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=/usr/src/app/app.py
RUN ls
CMD [ "flask", "run", "--host=0.0.0.0"]