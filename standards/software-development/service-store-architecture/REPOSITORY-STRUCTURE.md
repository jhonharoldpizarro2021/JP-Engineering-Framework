# Proposed Repository Structure

```text
service-store/
├── .devcontainer/
├── .github/
├── app/
├── bootstrap/
├── config/
├── database/
├── docker/
│   ├── nginx/
│   └── php/
├── packages/
│   └── JPEF/
│       └── ServiceStore/
├── public/
├── resources/
│   ├── css/
│   ├── js/
│   └── views/
├── routes/
├── scripts/
├── storage/
├── tests/
├── .dockerignore
├── .editorconfig
├── .env.example
├── .gitignore
├── compose.yml
├── compose.dev.yml
├── compose.prod.yml
├── Dockerfile
├── Makefile
├── composer.json
├── composer.lock
├── package.json
├── package-lock.json
└── README.md
```

## Repository rule

The application must use its own independent repository.

The JP Engineering Framework repository stores standards, architecture baselines, templates, and governance - not the application source code.
