.PHONY: install-tools
install-tools:
	cat tools.go | grep _ | awk -F'"' '{print $$2}' | xargs -tI % go install %

.PHONY: proto
proto:
	protoc --go_opt paths=source_relative --go_out=. ./quarks-tech/protoevent/v1/*.proto