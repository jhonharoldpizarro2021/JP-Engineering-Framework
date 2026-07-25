#!/usr/bin/env sh
set -eu

vendor/bin/pint --test
vendor/bin/phpstan analyse
php artisan test
