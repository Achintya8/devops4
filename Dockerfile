#base image
FROM python
#working directory
WORKDIR /app
#copy requirements txt file
COPY requirements.txt .
#install the dependencies
RUN pip install --no-cache-dir -r requirements.txt
#copy application code
COPY . .
#set the environment variables
ENV FLASK_APP=app.py

ENV FLASK_RUN_HOST=0.0.0.0

ENV FLASK_RUN_PORT=5000
#command to run the app

CMD ["flask","run"]