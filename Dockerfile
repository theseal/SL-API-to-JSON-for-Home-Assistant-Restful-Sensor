FROM python:3.7

RUN git clone https://github.com/theseal/SL-API-to-JSON-for-Home-Assistant-Restful-Sensor.git && \
    pip install -r SL-API-to-JSON-for-Home-Assistant-Restful-Sensor/requirements.txt

COPY SL-API-to-JSON-for-Home-Assistant-Restful-Sensor /

CMD [ "/SL-API-to-JSON-for-Home-Assistant-Restful-Sensor" ]

EXPOSE 54458
