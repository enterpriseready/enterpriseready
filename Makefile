.PHONY: serve all

serve:
	hugo serve \
	  --config="./hugo-config/enterpriseready.toml" \
		--contentDir="../content" \
		--source="./site" \
		--theme="hugo-theme-enterpriseready" \
		--baseUrl="http://localhost:1313"

all: serve
