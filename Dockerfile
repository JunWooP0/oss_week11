FROM python:3.9

WORKDIR /app


COPY . /app

RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

EXPOSE 80

ENV STUDENT_ID=2022316101

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
