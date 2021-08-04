
<p align="center">
    <img src="https://github.com/SusmoySenGupta/readme-contents/blob/main/all-logo/laravel-logo.png" width="50" hspace="10"> 
    <img src="https://github.com/SusmoySenGupta/readme-contents/blob/main/all-logo/vuejs-logo.png" width="50" hspace="10">
    <img src="https://github.com/SusmoySenGupta/readme-contents/blob/main/all-logo/tailwind-css-logo.svg" width="50" hspace="10">
</p>

# Laravel Vue Passport Starter

This is a laravel-vue starter app with built-in role-based authentication.


## Demo

`Link:` 
<a href="http://susmoycse.com/laravel-vue/passport-starter-with-welcome-email/" target="_blank">laravel-vue-passport-starter</a>  


## Installation

#### Client side
```bash
  cd client-side
  npm install
```
#### Server side
```bash
  cd server-side
  composer install
  cp .env.example .env
  php artisan key:generate
  php artisan migrate --seed
  php artisan passport:install
```


## Authors

- [@Susmoy Sen Gupta](https://github.com/SusmoySenGupta)

  
## Screenshots

![App Screenshot](https://github.com/SusmoySenGupta/readme-contents/blob/main/laravel-vue-passport-starter-images/index-example.png)
![App Screenshot](https://github.com/SusmoySenGupta/readme-contents/blob/main/laravel-vue-passport-starter-images/login-example.png)
![App Screenshot](https://github.com/SusmoySenGupta/readme-contents/blob/main/laravel-vue-passport-starter-images/registration-example.png)
![App Screenshot](https://github.com/SusmoySenGupta/readme-contents/blob/main/laravel-vue-passport-starter-images/registered-example.png)
