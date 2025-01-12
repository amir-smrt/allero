build:
	go build -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=0.0.2" -o allero

build-prod:
	go build -tags=production -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=0.0.2" -o allero

run: 
	go run main.go

validate:
	go run -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=test" main.go validate

validate-ignore-token:
	go run -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=test" main.go validate --ignore-token

set-token:
	go run -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=test" main.go config set token ewogICJydWxlcyI6IFt0cnVlLCBmYWxzZSwgdHJ1ZSwgZmFsc2UsIHRydWUsIGZhbHNlLCB0cnVlLCBmYWxzZV0sCiAgImVtYWlsIjogImRpbWFicnVAZ21haWwuY29tIiwKICAidW5pcXVlSWQiOiAiYWJjMTIzIiAKfQ==

clear-token:
	go run -ldflags="-X github.com/allero-io/allero/cmd.CliVersion=test" main.go config clear token 

create-bin:
	goreleaser --snapshot --skip-publish --rm-dist

github: 
	# go run main.go fetch github supran2811/familyApp
	go run main.go fetch github curbengh/hexo-yam

gitlab:
	# go run main.go fetch gitlab GitLab-examples/clojure-web-application
	go run main.go fetch gitlab allero/demo
