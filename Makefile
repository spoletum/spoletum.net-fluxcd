.PHONY: bootstrap

bootstrap:
	flux bootstrap git \
	--url=ssh://git@github.com/spoletum/spoletum.net-fluxcd \
	--private-key-file=/home/alessandro/.ssh/id_rsa \
	--branch=main \
	--path=clusters/dev