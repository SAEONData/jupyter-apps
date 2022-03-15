FROM python:3.9

WORKDIR /srv
COPY requirements.txt ./
COPY notebooks notebooks/
RUN pip install -r requirements.txt

WORKDIR /srv/notebooks
CMD ["voila", "--no-browser"]
