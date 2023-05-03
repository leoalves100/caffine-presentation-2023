# caffine-presentation-2023

Esse repositório foi criado para fins de introdução ao Terraform. O código apresentado, não deve ser executado em produção!

# Introdução

Usaremos o GCP(Google Cloud Platform) como provedor de cloud. [Consulte](https://cloud.google.com/free/docs/free-cloud-features?hl=pt-br#free-tier-usage-limits) os limites do nível gratuito

# Preparando sua conta GCP

1. Crie um projeto no [Console do GCP](https://console.cloud.google.com/getting-started). Nome utilizado no projeto **caffine-presentation-2023**
2. Crie uma conta de faturamento para utilização dos recursos

# Executando localmente

1. [Instale](https://asdf-vm.com/guide/getting-started.html) o ASDF
   
2. Adicione o plugin do terraform e gcloud

```bash
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud

asdf install
```

3. Realize o login no GCP, para gerar as credenciais que será utilizado pelo terraform

```bash
gcloud auth application-default login
```

**Obs¹**: As credencias será salva em `~/.config/gcloud/application_default_credentials.json`

4. Inicialize o provedor

```
terraform init
```

5. Execute o planejamento do terraform

```bash
terraform plan
```

6. Execute a aplicação do terraform

```bash
terraform apply
```

7. Destroy os recursos criados

```bash
terraform destroy
```

# Links úteis

- [O que é terraform](https://developer.hashicorp.com/terraform/intro)
- [O que é um resource](https://developer.hashicorp.com/terraform/language/resources)
- [O que é um data source](https://developer.hashicorp.com/terraform/language/data-sources)
- [Variáveis](https://developer.hashicorp.com/terraform/language/values/variables)
- [Output](https://developer.hashicorp.com/terraform/language/values/outputs)
- [Funções](https://developer.hashicorp.com/terraform/language/functions)
- [Como desenvoler um módulo](https://developer.hashicorp.com/terraform/language/modules/develop)
- [Statefile](https://developer.hashicorp.com/terraform/language/state)
- [Backend](https://developer.hashicorp.com/terraform/language/settings/backends/configuration)