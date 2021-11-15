Profile: BRImunobiologicoAdministradoCampanha
Parent: Immunization
Id: BRImunobiologicoAdministradoCampanha
Title: "Imunobiológico Administrado em Campanha"
Description: "Representa um imunobiológico administrado em campanha vacinal."
* ^meta.lastUpdated = "2021-01-06T14:07:06+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRImunobiologicoAdministradoCampanha-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-12-08"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Imunobiológico administrado em campanha"
* . ^definition = "Representa um imunobiológico administrado em campanha vacinal."
* . ^alias[0] = "Campanha vacinal"
* . ^alias[+] = "Vacinação campanha"
* . ^alias[+] = "Imunizaçao"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains BRGrupoAtendimento named grupoAtendimento 1..1
* identifier ..0
* status = #completed (exactly)
* status MS
* status from $BREstadoEvento-1.0 (required)
* status ^short = "Estado da Administração do Imunobiológico"
* status ^binding.description = "Estado do evento"
* statusReason ..0
* vaccineCode MS
* vaccineCode from $BRImunobiologico-1.0 (required)
* vaccineCode ^short = "Imunobiológico administrado em campanha vacinal."
* vaccineCode ^definition = "Imunobiológico administrado em campanha vacinal."
* vaccineCode ^binding.description = "Imunobiológico."
* vaccineCode.coding 1..1
* vaccineCode.coding.system 1..
* vaccineCode.coding.code 1..
* vaccineCode.coding.display ..0
* vaccineCode.coding.userSelected ..0
* vaccineCode.text ..0
* patient only Reference(BRIndividuo)
* patient MS
* patient ^short = "indivíduo imunizado."
* patient ^definition = "Indivíduo que recebeu o imunobiológico."
* patient.reference ..0
* patient.type ..0
* patient.identifier 1..
* patient.identifier.use ..0
* patient.identifier.type ..0
* patient.identifier.system 1..
* patient.identifier.value 1..
* patient.identifier.period ..0
* patient.identifier.assigner ..0
* patient.display ..0
* encounter ..0
* occurrence[x] only dateTime
* occurrence[x] MS
* occurrence[x] ^short = "Data da Administração do Imunobiológico"
* occurrence[x] ^definition = "Data ou data e hora que o imunobiológico foi administrado."
* recorded ..0
* primarySource ..0
* reportOrigin ..0
* location ..0
* manufacturer 1.. MS
* manufacturer only Reference(BRPessoaJuridicaProfissionalLiberal)
* manufacturer ^short = "Fabricante"
* manufacturer ^definition = "Fabricante do imunobiológico."
* manufacturer.type ..0
* manufacturer.identifier ..0
* manufacturer.display ^short = "Nome do fabricante"
* lotNumber 1.. MS
* lotNumber ^short = "Lote"
* lotNumber ^definition = "Código do lote do imunobiológico."
* expirationDate ..0
* expirationDate ^short = "Data de expiração do imunobiológico"
* expirationDate ^definition = "Data de expiração do imunobiológico."
* site ..0 MS
* site ^short = "Local de aplicação"
* site ^definition = "Local do corpo humano onde o imunobiológico foi administrado."
* site.coding 1..1
* site.coding.system 1..
* site.coding.code 1..
* site.coding.display ..0
* site.coding.userSelected ..0
* site.text ..0
* route ..0 MS
* route ^short = "Via de administração"
* route ^definition = "Local onde o imunobiológico foi administrado."
* route.coding 1..1
* route.coding.system 1..
* route.coding.code 1..
* route.coding.display ..0
* route.coding.userSelected ..0
* route.text ..0
* doseQuantity ..0
* performer 1..1 MS
* performer ^short = "Profissional executante"
* performer ^definition = "Informações sobre o profissional que administrou o imunobiológico."
* performer.function MS
* performer.function from $BROcupacao-1.0 (required)
* performer.function ^short = "Ocupação do profissional"
* performer.function ^definition = "Atividade desempenhada pelo profissional que administrou o imunobiológico."
* performer.function ^binding.description = "Ocupação"
* performer.function.coding 1..1
* performer.function.coding.system 1..
* performer.function.coding.code 1..
* performer.function.coding.display ..0
* performer.function.coding.userSelected ..0
* performer.function.text ..0
* performer.actor only Reference(BRProfissional)
* performer.actor MS
* performer.actor ^short = "Profissional executante"
* performer.actor ^definition = "Profissional que administrou o imunobiológico."
* performer.actor.reference 1..
* performer.actor.type ..0
* performer.actor.identifier ..0
* performer.actor.display ..0
* note ..0
* reasonCode ..0
* reasonReference ..0
* isSubpotent ..0
* subpotentReason ..0
* education ..0
* programEligibility ..0
* fundingSource ..0
* reaction ..0
* protocolApplied 1..1 MS
* protocolApplied.series ..0
* protocolApplied.authority ..0
* protocolApplied.targetDisease ..0
* protocolApplied.doseNumber[x] only string
* protocolApplied.doseNumber[x] MS
* protocolApplied.doseNumber[x] from $BRDose-1.0 (required)
* protocolApplied.doseNumber[x] ^short = "Dose"
* protocolApplied.doseNumber[x] ^definition = "Dose administrada do imunobiológico."
* protocolApplied.doseNumber[x] ^binding.description = "Dose do Imunobiológico"
* protocolApplied.seriesDoses[x] ..0