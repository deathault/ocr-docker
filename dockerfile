FROM minidocks/tesseract:4-rus
#Качаем зависимости
RUN apk add --no-cache \
    ocrmypdf \
    ghostscript \
    unpaper
#скрипт надо прокинуть в конейнер    
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
WORKDIR /app
#Запускаем
ENTRYPOINT ["/usr/local/bin/start.sh"]