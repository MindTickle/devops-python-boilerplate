FROM python:3.6

WORKDIR /src/app

COPY ./app/requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY ./entrypoint.sh /src/entrypoint.sh
RUN chmod +x /src/entrypoint.sh

COPY ./app .

VOLUME /logs

EXPOSE 8000

ENTRYPOINT ["/src/entrypoint.sh"]
