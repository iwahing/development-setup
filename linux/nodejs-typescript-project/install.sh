mkdir $1
cd $1

npm init -y
npm install express cors joi jsend winston morgan @types/morgan \
            dotenv swagger-jsdoc swagger-ui-express
npm install -D typescript ts-node @types/node @types/express \
    eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin \
    eslint-config-prettier eslint-plugin-prettier eslint-config-airbnb \
    eslint-config-prettier eslint-plugin-no-loops nodemon rimraf \
    @types/jsend @types/cors @types/swagger-jsdoc @types/swagger-ui-express \
