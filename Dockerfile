FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# Bundle app source
COPY docs/ docs/
COPY public/ public/
COPY routes/ routes/
COPY services/ services/
COPY views/ views/
COPY app.js .


EXPOSE 3000

CMD [ "node", "app.js" ]