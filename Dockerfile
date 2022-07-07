FROM python:3.10.5-slim-bullseye
WORKDIR /app
ADD . /app
RUN pip3 install -r Requirements.txt
CMD [ "python3", "./app.py" ]