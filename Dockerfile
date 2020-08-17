FROM python:3.8-alpine

RUN apk add --no-cache \
    make

WORKDIR /app
COPY requirements.txt .
RUN pip install -U -r requirements.txt
COPY . .
RUN rm -rf build/html

EXPOSE 8000

CMD make clean && sphinx-autobuild --host 0.0.0.0 --port 8000 /app/source/ /app/build/html/
# CMD for testing:
# CMD tail -f /dev/null
