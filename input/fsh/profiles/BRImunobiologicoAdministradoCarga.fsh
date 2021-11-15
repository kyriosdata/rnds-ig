Profile: BRImunobiologicoAdministradoCarga
Parent: Immunization
Id: BRImunobiologicoAdministradoCarga
Title: "Imunobiologico Administrado - Carga"
Description: "Registro de imunobiológicos administrados no legado do SIPNI."
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRImunobiologicoAdministradoCarga-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-12-14"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Para carga de registros de imunobiológicos administrados do SIPNI."
* . ^short = "Carga registro de imunobiológicos"
* . ^definition = "Carga registro de imunobiológicos administrados no SIPNI."
* . ^alias = "carga"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains BRSituacaoCondicaoIndividuo named myExtension 0..* MS
* extension[myExtension] ^short = "Situação/Condição do invdivíduo"
* extension[myExtension] ^definition = "Especifica a situação ou condição do invdivíduo."
* identifier ..0
* status MS
* status from $BREstadoEvento-1.0 (required)
* status ^short = "Estado da Administração do Imunobiológico"
* status ^binding.description = "Estado do evento"
* statusReason ..0
* vaccineCode MS
* vaccineCode from $BRImunobiologico-1.0 (required)
* vaccineCode ^short = "Estado da Administração do Imunobiológico"
* vaccineCode ^definition = "Imunobiológico que foi administrado."
* vaccineCode ^binding.description = "Imunobiológico"
* vaccineCode.coding 1..1
* vaccineCode.coding.system 1..
* vaccineCode.coding.code 1..
* vaccineCode.coding.display ..0
* vaccineCode.coding.userSelected ..0
* vaccineCode.text ..0
* patient only Reference(BRIndividuo)
* patient MS
* patient ^short = "Indivíduo"
* patient ^definition = "Indivíduo que recebeu o imunobiológico."
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
* occurrence[x] ^short = "Data da administração do imunobiológico"
* occurrence[x] ^definition = "Data ou data e hora que o imunobiológico foi administrado."
* recorded ..0
* primarySource ..0
* reportOrigin ..0
* location ..0
* manufacturer only Reference(BRPessoaJuridicaProfissionalLiberal)
* manufacturer MS
* manufacturer ^short = "Fabricante"
* manufacturer ^definition = "Fabricante d imunobiológico."
* manufacturer.type ..0
* manufacturer.identifier ..0
* manufacturer.display ^short = "Nome do fabricante"
* lotNumber 1.. MS
* lotNumber ^short = "Lote"
* lotNumber ^definition = "Código do lote do imunobiológico."
* expirationDate ^short = "Data de expiração do imunobiológico"
* expirationDate ^definition = "Data de expiração do imunobiológico"
* site MS
* site from $BRLocalAplicacao-1.0 (required)
* site ^short = "Local de aplicação"
* site ^definition = "Local do corpo humano onde o imunobiológico foi administrado."
* site ^binding.description = "Local de aplicação"
* site.coding 1..1
* site.text ..0
* route MS
* route from $BRViaAdministracao-1.0 (required)
* route ^short = "Via de administração"
* route ^definition = "Via que o imunobiológico foi administrado."
* route ^binding.description = "Via de administração"
* route.coding 1..1
* route.text ..0
* doseQuantity ..0
* performer 1..1 MS
* performer ^short = "Profissional executante"
* performer ^definition = "Informações sobre o profissional que administrou o imunobiológico."
* performer.function 1.. MS
* performer.function from $BROcupacao-1.0 (required)
* performer.function ^short = "Ocupação do profissional"
* performer.function ^definition = "Atividade desempenhada pelo profissional que administrou o imunobiológico."
* performer.function ^binding.description = "Ocupação"
* performer.function.coding 1..1
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
* protocolApplied.doseNumber[x] ^binding.description = "Dose do imunobiológico"
* protocolApplied.seriesDoses[x] ..0