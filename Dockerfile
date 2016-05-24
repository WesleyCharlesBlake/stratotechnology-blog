FROM download13/node

WORKDIR /ghost  
COPY config.js /ghost/config.js  
RUN wget -O ghost.zip https://github.com/TryGhost/Ghost/releases/download/0.8.0/Ghost-0.8.0.zip \  
    && unzip ghost.zip \
    && rm ghost.zip \
    && npm install --production \
    && npm cache clean \
    && rm -rf /tmp/npm*

CMD ["npm", "start", "--production"]