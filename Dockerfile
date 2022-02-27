FROM python:3.9.10-bullseye as mhddos

WORKDIR /app

COPY . /app
run pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# ENTRYPOINT [ "/app/contrib/docker/app/entrypoint.sh" ]
CMD ["python3", "start.py", "help"]
