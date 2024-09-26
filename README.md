### OperaTerra AS

# Terraform Azure Infrastructure

# made by Sarhad Hanan
# sarhadh@stud.ntnu.no
# 
## Beskrivelse
Dette prosjektet oppretter en komplett infrastruktur i Azure ved hjelp av Terraform. Infrastrukturen består av:
- Et Virtual Network (VNet) med Subnet og Network Security Group (NSG).
- En Azure Virtual Machine (Linux).
- En Azure Storage Account med en Blob Container.
- En Azure Key Vault som lagrer hemmeligheter for VM-brukernavn, passord, og Storage Account Access Key.

## Moduler
Prosjektet bruker følgende moduler:
1. **Network**: Oppretter VNet, Subnet og NSG.
2. **Storage Account**: Lager en Storage Account og en Blob Container.
3. **Virtual Machine**: Lager en virtuell maskin (VM) og kobler den til nettverket.
4. **Key Vault**: Lager en Key Vault og lagrer hemmeligheter for VM og Storage Account.

## Krav
For å kjøre dette Terraform-prosjektet trenger du:
- En aktiv Azure-konto.
- Terraform CLI installert på din lokale maskin.
- Azure CLI installert og autentisert (kjør `az login` før du starter).

## Bruk
1. **Initialiser Terraform**: Første gang du kjører Terraform i prosjektet, må du initialisere prosjektet for å laste ned nødvendige leverandører.
   ```bash
   terraform init
   ```

2. **Planlegg infrastrukturen**: For å se hvilke ressurser Terraform vil opprette, kan du kjøre en plan.
   ```bash
   terraform plan -out="main.tfplan"
   ```

3. **Opprett infrastrukturen**: For å faktisk opprette ressursene, kjør følgende kommando.
   ```bash
   terraform apply "main.tfplan"
   ```

4. **Slett infrastrukturen**: Når du er ferdig med prosjektet og vil fjerne alle ressurser, kan du kjøre `destroy`-kommandoen.
   ```bash
   terraform destroy
   ```

## Input-variabler
Disse variablene er nødvendige for å tilpasse infrastrukturen. Du kan definere dem i en fil som heter `terraform.tfvars`.

Eksempel på `terraform.tfvars`-fil:
```hcl
resource_group_name  = "rgSarhad"
location             = "westeurope"
vnet_name            = "myVNet"
address_space        = ["10.0.0.0/16"]
subnet_name          = "mySubnet"
subnet_prefixes      = ["10.0.1.0/24"]
nsg_name             = "myNSG"
storage_account_name = "mystorageacct"
account_tier         = "Standard"
replication_type     = "LRS"
container_name       = "mycontainer"
vm_name              = "myVM"
vm_size              = "Standard_B2s"
admin_username       = "adminuser"
admin_password       = "1!SAu&23E pWSFE32rfw"
key_vault_name       = "KeyVaultSarhad"
tenant_id            = "f689cf06-1883-4e05-a677-718074c6f04d"

```

## Outputs
Når infrastrukturen er opprettet, vil følgende outputs være tilgjengelige:
- `vm_public_ip`: Den offentlige IP-adressen til VM-en.
- `storage_account_primary_key`: Primærtilgangsnøkkelen for lagringskontoen.
- `key_vault_id`: ID-en til Key Vault.

## Skjermbilder
Her er eksempler på skjermbilder som viser vellykket oppretting og destruksjon av infrastrukturen:

- **Oppretting av infrastruktur**:
  ![Terraform Apply Success](./github-terraform/skjermbilde/plan.png)

- **Destruksjon av infrastruktur**:
  ![Terraform Destroy Success](./github-terraform/skjermbilde/Deleting.png)