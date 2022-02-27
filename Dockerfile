
    FROM ubuntu

    USER root

    RUN apt update -y
    RUN apt install -y openvpn | echo "y"
    RUN apt install  -y curl| echo "y"

    RUN apt install -y python3 python3-pip git

    WORKDIR /home
    
    COPY autovpn3.sh ./
    RUN chmod +x ./autovpn3.sh && ./autovpn3.sh | echo "Y"


    RUN git clone https://github.com/MHProDev/MHDDoS.git 

    RUN cd ./MHDDoS

    WORKDIR /home/MHDDoS


    RUN pip3 install -r ./requirements.txt

    CMD python3 ./start.py