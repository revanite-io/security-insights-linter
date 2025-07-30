# security-insights-linter

An action to validate Security Insights files against the Security Insights [spec](https://github.com/ossf/security-insights/tree/main/spec), currently implemented via CUE validation.

## Usage

```yaml
name: Lint Security Insights

on:
  pull_request:
    branches: ["main"]

permissions: {}

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
        with:
          persist-credentials: false

      - name: Run linter
        uses: revanite-io/security-insights-linter@main
```

## Inputs

| Input            | Description                                             | Default                                    | Required |
|------------------|---------------------------------------------------------|--------------------------------------------|----------|
| `si-path`        | Path to security-insights.yml'                          | `security-insights.yml` in repository root | No       |
| `schema-version` | Version of the Security Insights schema to use          | `v2.1.0`                                   | No       |
| `skip-cue-setup` | Skip `setup-cue` (i.e. because it is already installed) | `false`                                    | No       |

