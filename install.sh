composer install && \
php artisan key:generate && \
php artisan migrate:fresh --seed && \
php artisan storage:link && \
npm install
