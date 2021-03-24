FROM jojomi/hugo:0.82.0

RUN apk add --update --no-cache py-pip
RUN pip install Pygments
