FROM alpine:3.5
COPY requirements.txt ./
RUN apk add --update py2-pip && \
 pip install --upgrade pip && \
 pip install --no-cache-dir -r requirements.txt
COPY store/ /usr/src/app/

EXPOSE 80
ENTRYPOINT ["python"]
CMD ["/usr/src/app/app.py"]
