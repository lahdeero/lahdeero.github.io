# docker build -t lahdeero.github.io .
# docker run -it -p 8000:8000 lahdeero.github.io

FROM tocttou/jekyll:3.5

WORKDIR /srv/jekyll/

COPY / .

EXPOSE 8000

CMD ["jekyll", "serve", "--watch", "--port", "8000"]

