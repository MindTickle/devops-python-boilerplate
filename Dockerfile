FROM python:3.6 as base

#FROM base as builder

WORKDIR /src/app
COPY ./app/requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt

#<<<<<<< HEAD
#RUN pip install -r ./requirements.txt

#FROM base
#
#WORKDIR /src/app
#
#COPY --from=builder /install /usr/local/lib/python3.7/site-packages/
#=======

#FROM base
#>>>>>>> 2a9ed0b5030aaf42e87696ef15c27372efa0ed97

#COPY --from=builder /install /usr/local/lib/python3.6/site-packages/
#WORKDIR /src/app
COPY ./entrypoint.sh /src/entrypoint.sh

RUN chmod +x /src/entrypoint.sh

COPY ./app .
VOLUME /logs

EXPOSE 8000
ENTRYPOINT ["/src/entrypoint.sh"]
