# Examples

## Válidos

- `feature/add-user-authentication`
- `feature/42-add-user-authentication`
- `fix/87-correct-payment-validation`
- `docs/update-docker-standard`
- `refactor/simplify-order-service`
- `test/add-checkout-integration-tests`
- `build/update-composer-image`
- `ci/validate-branch-names`
- `chore/remove-obsolete-scripts`
- `security/105-prevent-token-exposure`
- `release/v1.2.0`
- `hotfix/123-fix-production-login`
- `main`

## Inválidos

- `Feature/Add_Login`
- `feature/add user authentication`
- `feature/add/user/authentication`
- `feature//add-login`
- `feature/add--login`
- `feature/add-login-`
- `feature/Ágregar-login`
- `my-work`
- `changes`
- `test`
- `release/1.2`
- `release/version-1.2.0`
- `hot-fix/login`
- `feature/999-fake-ticket`

## Motivos de rechazo

- Prefijo no oficial.
- Mayúsculas.
- Espacios.
- Guiones bajos.
- Caracteres acentuados.
- Más de una barra.
- Ticket inexistente.
- Descripción ambigua.
- Versión de release inválida.
