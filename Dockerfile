FROM python:3

RUN useradd -ms /bin/bash django

USER django

ENV PYTHONNUNBUFFERED 1
ENV HOME_APP /home/django/app
ENV PATH $PATH:/home/django/.local/bin

WORKDIR $HOME_APP

RUN echo "" && echo "HOME_APP": $HOME_APP && echo "" 

COPY requirements.txt $HOME_APP/

RUN pip install -r $HOME_APP/requirements.txt

COPY . $HOME_APP/