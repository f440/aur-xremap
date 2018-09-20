.PHONY: build
build:
	uid=${shell id -u} docker-compose up

.PHONY: clean
clean:
	$(RM) -r *.xz .SRCINFO pkg src xremap-*/
	uid=${shell id -u} docker-compose down
