FROM biansepang/weebproject:buster

# Install repo link
RUN git clone -b luffy-Bot https://github.com/apisgbot/luffy-Bot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/apisgbot/luffy-Bot/luffy-Bot/requirements.txt

CMD ["python3","-m","userbot"]
