FROM registry.access.redhat.com/ubi8/python-36

# Add the program and the configuration file
ADD ./Latebus.py .
ADD ./latebus-config.yaml .

# Install dependencies
RUN pip install --upgrade pip
RUN python -m pip install requests
RUN python -m pip install pytime
RUN python -m pip install pyyaml
RUN python -m pip install timezones
RUN python -m pip install pytz
RUN python -m pip install datetime

USER 1001

CMD python Latebus.py