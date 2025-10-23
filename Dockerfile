FROM nodered/node-red:4.1.0-22
USER root
#RUN apk add chromium

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN set -x \
   && apk add -u --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont

# Puppeteer v13.5.0 works with Chromium 100.
RUN yarn add puppeteer@13.5.0
RUN yarn add playwright-core
RUN yarn add cheerio

USER node-red
