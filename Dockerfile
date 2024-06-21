FROM python:3.12
WORKDIR /isokoweb
COPY ./isoko-web-app ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "letskart.wsgi:application"]
#CMD ["gunicorn", "--workers", "3", "letskart.wsgi:application"]

