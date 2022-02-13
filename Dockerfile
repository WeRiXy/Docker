FROM python:3.6

WORKDIR /app

COPY ./flaskex-master/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt WTForms==1.0.1

COPY ./flaskex-master .

CMD [ "python", "app.py" ]