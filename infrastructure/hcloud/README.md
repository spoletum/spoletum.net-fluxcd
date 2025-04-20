# hcloud-cloud-controller-manager

This Helm chart deploys Hetzner Cloud's CCM.

If you change the private network's name or subnet CIDR, please make sure you also change the values in the `hccm.yaml` file:

```yaml
config:
    privateNetworks: 
    enabled: true
    id: spoletum-dev
    subnet: 10.0.0.0/24
```