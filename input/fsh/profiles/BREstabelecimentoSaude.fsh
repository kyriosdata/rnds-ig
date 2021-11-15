Profile: BREstabelecimentoSaude
Parent: Organization
Id: a3bc0180-3d3d-469f-af04-7117f87db5be
Title: "Estabelecimento de Saúde"
Description: "Espaço físico delimitado e permanente onde são realizadas ações e serviços de saúde humana sob responsabilidade técnica."
* ^meta.lastUpdated = "2020-03-13T20:46:22.162+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstabelecimentoSaude-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-03-13T20:46:45.7872438+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Estabelecimento de Saúde"
* . ^definition = "Espaço físico delimitado e permanente onde são realizadas ações e serviços de saúde humana sob responsabilidade técnica."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    BRAtendeSUS named isSUS 1..1 MS and
    BRAdministradorTerceiro named outsourcedAdministrator 0..1 MS
* extension[isSUS] ^short = "Atende SUS"
* extension[isSUS] ^definition = "True = Sim; False = Não."
* extension[outsourcedAdministrator] ^definition = "Instituição contratada para administrar o Estabelecimento de Saúde."
* extension[outsourcedAdministrator].value[x] only Reference(BRPessoaJuridicaProfissionalLiberal)
* identifier ..0
* active 1..
* active ^short = "Estabelecimento de Saúde Ativo"
* active ^definition = "Se o Estabelecimento de Saúde ainda está em ativo."
* type 1..1 MS
* type from $BRTipoEstabelecimentoSaude-1.0 (required)
* type ^short = "Tipo do Estabelecimento de Saúde"
* type ^definition = "Classificação do Estabelecimento de Saúde de acordo com um conjunto de dimensões."
* type ^binding.description = "Tipo de Estabelecimento de Saúde"
* type.coding 1..1
* type.coding from $BRTipoEstabelecimentoSaude-1.0 (required)
* type.coding ^binding.description = "Tipo de Estabelecimento de Saúde."
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* name 1.. MS
* name ^short = "Nome"
* name ^definition = "Nome do Estabelecimento de Saúde."
* alias 1..1 MS
* alias ^short = "Nome Empresarial"
* alias ^definition = "Firma ou denominação adotada para o exercício da instituição/entidade/órgão/empresa."
* telecom only BRMeioContato
* telecom ^definition = "Informações do(s) meio(s) de contato com o Estabelecimento de Saúde."
* telecom.period ..0
* address 1..1
* address only BREndereco
* address ^definition = "Dados do endereço onde o Estabelecimento de Saúde é localizado."
* address.use ..0
* address.type ..0
* address.period ..0
* partOf 1.. MS
* partOf only Reference(BRPessoaJuridicaProfissionalLiberal)
* partOf ^short = "CPF/CNPJ do Estabelecimento/Mantenedora"
* partOf ^definition = "Pessoa Física (CPF) ou Jurídica (CNPJ) proprietária do Estabelecimento de Saúde."
* partOf.reference 1..
* partOf.type ..0
* partOf.identifier ..0
* partOf.display ..0
* contact ..0
* endpoint ..0