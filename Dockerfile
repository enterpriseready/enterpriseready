FROM jojomi/hugo:0.82.0

RUN apk add --update --no-cache wget py-pip
RUN pip install Pygments
