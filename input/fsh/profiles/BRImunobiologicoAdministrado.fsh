Profile: BRImunobiologicoAdministrado
Parent: Immunization
Id: 31468be2-a66e-427d-b07e-c217627c069d
Title: "Imunobiológico Administrado"
Description: "Representa um imunobiológico administrado."
* ^meta.lastUpdated = "2020-03-13T20:49:07.302+00:00"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRImunobiologicoAdministrado-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-03-13T20:49:30.516547+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Imunobiológico Administrado"
* . ^definition = "Representa um imunobiológico administrado."
* . ^alias[0] = "Vacinação"
* . ^alias[+] = "Vacina Administrada"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains BRSituacaoCondicaoIndividuo named patientSituation 0..* MS
* extension[patientSituation] ^min = 0
* identifier ..0
* status MS
* status from $BREstadoEvento-1.0 (required)
* status ^short = "Estado da Administração do Imunobiológico"
* status ^binding.description = "Estado do Evento"
* statusReason ..0
* vaccineCode MS
* vaccineCode from $BRImunobiologico-1.0 (required)
* vaccineCode ^short = "Imunobiológico Administrado"
* vaccineCode ^definition = "Imunobiolótio que foi administrado."
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
* patient.extension ^slicing.discriminator.type = #value
* patient.extension ^slicing.discriminator.path = "url"
* patient.extension ^slicing.rules = #open
* patient.extension ^min = 0
* patient.extension[unidentifiedPatinet] only BRIndividuoNaoIdentificado
* patient.extension[unidentifiedPatinet] ^sliceName = "unidentifiedPatinet"
* patient.extension[unidentifiedPatinet] ^min = 0
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
* manufacturer only Reference(BRPessoaJuridicaProfissionalLiberal)
* manufacturer MS
* manufacturer ^short = "Fabricante"
* manufacturer ^definition = "Fabricante do imunobiológico."
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
* site ^short = "Local de Aplicação"
* site ^definition = "Local do corpo humano onde o imunobiológico foi administrado."
* site ^binding.description = "Local de Aplicação"
* site.coding 1..1
* site.coding.system 1..
* site.coding.code 1..
* site.coding.display ..0
* site.coding.userSelected ..0
* site.text ..0
* route MS
* route from $BRViaAdministracao-1.0 (required)
* route ^short = "Via de Administração"
* route ^definition = "Via que o imunobiológico foi administrado."
* route ^binding.description = "Via de Administração"
* route.coding 1..1
* route.coding.system 1..
* route.coding.code 1..
* route.coding.display ..0
* route.coding.userSelected ..0
* route.text ..0
* doseQuantity ..0
* performer 1..1 MS
* performer ^short = "Profissional Executante"
* performer ^definition = "Informações sobre o profissional que administrou o imunobiológico."
* performer.function 1.. MS
* performer.function from $BROcupacao-1.0 (required)
* performer.function ^short = "Ocupação do Profissional"
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
* performer.actor ^short = "Profissional"
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
* protocolApplied.extension ^slicing.discriminator.type = #value
* protocolApplied.extension ^slicing.discriminator.path = "url"
* protocolApplied.extension ^slicing.rules = #open
* protocolApplied.extension ^min = 0
* protocolApplied.extension contains BREstrategiaVacinacao named strategy 0..1 MS
* protocolApplied.extension[strategy] ^definition = "Identifica a estratégia de vacinação em que esta administração aconteceu."
* protocolApplied.series ..0
* protocolApplied.authority ..0
* protocolApplied.targetDisease ..0
* protocolApplied.doseNumber[x] only string
* protocolApplied.doseNumber[x] MS
* protocolApplied.doseNumber[x] from $BRDose-1.0 (required)
* protocolApplied.doseNumber[x] ^short = "Dose"
* protocolApplied.doseNumber[x] ^definition = "Dose do imunobiológico administrado."
* protocolApplied.doseNumber[x] ^binding.description = "Dose do Imunobiológico"
* protocolApplied.seriesDoses[x] ..0