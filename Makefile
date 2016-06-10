deb: repo
	cd repo && hg update && hg checkout release-$(shell jq -r '.upstream' versions.json)
	assets/build $(shell jq -r '.revision' versions.json)

repo:
	hg clone http://hg.nginx.org/nginx repo

build-dep:
	apt-get update
	apt-get install -y build-essential jq libpcre3-dev libssl-dev mercurial zlib1g-dev

clean:
	rm -rf deb
	rm -rf pkg
	rm -rf repo

.PHONY: deb build-dep clean
