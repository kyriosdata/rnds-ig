Profile: BRRegistroImunobiologicoAdministradoCampanha
Parent: Composition
Id: BRRegistroImunobiologicoAdministradoCampanha
Title: "Registro de Imunobiológico Administrado na Campanha"
Description: "Documento que aprepresenta o registro da administração de imunobiológicos em campanha vacinal."
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRegistroImunobiologicoAdministradoCampanha-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-12-08"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Registro de Imunobiológico Administrado"
* . ^definition = "Documento que aprepresenta o registro da administração de imunobiológicos em campanha vacinal."
* . ^alias[0] = "Campanha"
* . ^alias[+] = "Campanha vacinal"
* . ^alias[+] = "Imunobiológico"
* identifier ..0
* status MS
* status from $BREstadoDocumento-1.0 (required)
* status ^short = "final | entered-in-error"
* status ^binding.description = "Estado do documento"
* type MS
* type from $BRTipoDocumento-1.0 (preferred)
* type ^short = "Tipo de documento"
* type ^definition = "Especifica o tipo de documento que está sendo enviado na composição."
* type ^binding.description = "Tipo de documento"
* type.coding 1..1 MS
* type.text ..0
* category ..0 MS
* category ^short = "Modalidade Assistencial"
* category ^definition = "Classifica os contatos assistenciais de acordo com as especificidades do modo, local e duração do atendimento."
* category.coding 1..1 MS
* category.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^short = "Sujeito da composição"
* subject ^definition = "Quem ou o quê a composição se refere. Pode ser um indivíduo, dispositivo, grupos (de indivíduos, dispositivos etc.)."
* subject.reference ..0
* subject.type ..0
* subject.identifier 1..
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* encounter ..0
* date MS
* date ^short = "Data/hora de geração do documento"
* date ^definition = "Data e hora em que o documento foi gerado."
* author only Reference(BREstabelecimentoSaude)
* author MS
* author.reference ..0
* author.type ..0
* author.identifier 1..
* author.identifier.use ..0
* author.identifier.type ..0
* author.identifier.system 1..
* author.identifier.value 1..
* author.identifier.period ..0
* author.identifier.assigner ..0
* author.display ..0
* title = "Registro de Imunobiologico Administrado na Campanha" (exactly)
* title MS
* title ^short = "Título do documento"
* title ^definition = "Título do documento em linguagem humana."
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..1
* relatesTo ^short = "Relação a outros documentos"
* relatesTo ^definition = "Indica uma relação entre esse documento e outro documento (ou composição) existente."
* event ..0
* section 1.. MS
* section ^short = "Seções do documento"
* section ^definition = "Referencia todas as seções (profiles/resources) contidos neste documento."
* section.title ..0
* section.code ..0
* section.author ..0
* section.focus ..0
* section.text ..0
* section.mode ..0
* section.orderedBy ..0
* section.entry 1.. MS
* section.entry only Reference(BRImunobiologicoAdministradoCampanha)
* section.entry.reference 1.. MS
* section.entry.type ..0
* section.entry.identifier ..0
* section.entry.display ..0
* section.emptyReason ..0
* section.section ..0