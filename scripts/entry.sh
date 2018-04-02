while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' geoserver:8080/geoserver)" != "200" ]]; do sleep 5; done; go test -v -covermode=count -coverprofile=coverage.out
$GOPATH/bin/goveralls -coverprofile=coverage.out -service=travis-ci -repotoken $COVERALLS_TOKEN