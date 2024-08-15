FROM node:20-alpine

WORKDIR /app

ENV VITE_LUOXU_URL="https://lab.lilydjwg.me/luoxu"

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5173

CMD ["npm", "run", "preview"]
