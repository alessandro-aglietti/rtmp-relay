# rtmp-relay

With `docker-compose up` you bootstrap nginx with the RTMP module configured.

In the docker-compose you'll find every URL/ports exposed.

Using this RTMP server for example you can stream from a GoPro (https://gopro.com/it/it/news/how-to-live-stream-on-gopro) and reiceve the stream from OBS.

## Provide a local mp4 to be pushed

### Install yt-dlp

In our codespace

https://github.com/yt-dlp/yt-dlp

### push it over rtmp

ffmpeg -re -i "hoopy-frood-nlite.mp4" -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://localhost:8193/live/stream
ffmpeg -re -i "hoopy-frood-nlite.mp4" -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://4.tcp.eu.ngrok.io:17992/live/stream

## Install ngrok

In our codespace

curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
