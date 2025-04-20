.PHONY: bootstrap

flux:
	kubectl create namespace flux-system
	kubectl -n flux-system create secret generic sops-age --from-file=identity.agekey=/home/alessandro/.config/sops/age/keys.txt
	flux bootstrap git \
	--url=ssh://git@github.com/spoletum/spoletum.net-fluxcd \
	--private-key-file=/home/alessandro/.ssh/id_rsa \
	--branch=main \
	--path=clusters/dev
