# Boilerplate template for [TALL stack](https://tallstack.dev/) projects

## Requirements
- Docker

## Installation

1. Copy .env.example to .env
```bash
cp .env.example .env
```

2. Setup docker container
```bash
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs
```

3. Configure sail alias (if not configured)
```bash
echo "alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'" >> ~/.bashrc && source ~/.bashrc
```

4. Install application
```bash
sail up -d && sail install.sh
```

## Local development
Default admin user
- User: test@test.com
- Password: password

```bash
sail up -d && sail npm run dev
```
