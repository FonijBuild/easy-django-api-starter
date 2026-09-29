<div align="center">

# Easy Django API Starter

**A production-capable Django API foundation for maintainable business logic, admin workflows, and multi-client products.**

[![Use this template](https://img.shields.io/badge/use%20this%20template-2EA44F?logo=github&logoColor=white)](https://github.com/FonijBuild/easy-django-api-starter/generate)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)
![Status: Foundation](https://img.shields.io/badge/status-foundation-F59E0B)
![Django](https://img.shields.io/badge/Django-092E20?logo=django&logoColor=white) ![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?logo=postgresql&logoColor=white) ![uv](https://img.shields.io/badge/uv-DE5FE9)

[Documentation](https://github.com/FonijBuild/fonij-docs) · [Discussions](https://github.com/orgs/FonijBuild/discussions) · [Issues](https://github.com/FonijBuild/easy-django-api-starter/issues)

</div>

> “What do we build for, if not to lessen each other’s hardship?”

## Best for

- REST APIs and business backends
- Backends shared by web, mobile, extensions, or bots
- Workflow-heavy and data-heavy products
- Products that benefit from Django Admin

**Not for:** A fleet of microservices or a prebuilt business domain that every product is forced to use.

## Baseline

- Django + API foundations with clear app boundaries
- PostgreSQL, migrations, health checks, and structured configuration
- Admin, authentication foundations, and API documentation
- Testing, linting, typing, CI, and container-ready workflows
- AI-agent rules, specs, and architecture documentation

## Quick start

Preferred:

```bash
fonij create my-product
```

Direct template use:

```bash
gh repo create my-product --template FonijBuild/easy-django-api-starter --private --clone
cd my-product
cp .env.example .env
uv sync
uv run python manage.py migrate
uv run python manage.py runserver
```

## Project contract

- `.fonij/starter.json` describes this foundation to Fonij.
- `AGENTS.md` defines repository rules for AI coding agents.
- `specs/` contains implementation-ready feature specifications.
- `docs/` contains architecture and repository-specific guidance.
- Keep quality checks green before merging changes.

## Contributing

Read [`CONTRIBUTING.md`](CONTRIBUTING.md) before contributing. Security issues must follow [`SECURITY.md`](SECURITY.md).
