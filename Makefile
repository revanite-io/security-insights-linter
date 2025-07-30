VERSION ?= "v2.1.0"
SI_PATH ?= "security-insights.yml"


lintinsights:
	@curl -O --silent "https://raw.githubusercontent.com/ossf/security-insights-spec/refs/tags/$(VERSION)/schema.cue"
	@cue vet -d '#SecurityInsights' "$(SI_PATH)" schema.cue
	@rm schema.cue
