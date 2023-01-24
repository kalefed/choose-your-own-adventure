FROM python:3.11-alpine

WORKDIR /python-adventure-game

COPY requirements.txt requirements.txt

COPY templates ./

RUN pip3 install -r requirements.txt

COPY . .

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD ["app.py" ]