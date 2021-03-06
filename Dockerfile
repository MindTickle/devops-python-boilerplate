FROM python:3.6 as base

#FROM base as builder

WORKDIR /src/app
COPY ./app/requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt


#FROM base

#COPY --from=builder /install /usr/local/lib/python3.6/site-packages/
#WORKDIR /src/app
COPY ./entrypoint.sh /src/entrypoint.sh

RUN chmod +x /src/entrypoint.sh

COPY ./app .
VOLUME /logs

EXPOSE 8000
ENTRYPOINT ["/src/entrypoint.sh"]
