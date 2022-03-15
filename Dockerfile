FROM python:3.9

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR /srv
COPY requirements.txt ./
COPY notebooks notebooks/
RUN pip install -r requirements.txt

WORKDIR /srv/notebooks
CMD ["voila", "--no-browser"]
