From node:24-alpine  

WORKDIR /usr/src/app 

COPY ./package.json  ./package.json 
COPY ./pnpm-lock.yaml ./pnpm-lock.yaml 
COPY ./tsconfig.json ./tsconfig.json 

RUN npm install -g pnpm 

RUN pnpm install 

COPY ./src ./src 

RUN pnpm build 

CMD [ "pnpm" ,"start" ]