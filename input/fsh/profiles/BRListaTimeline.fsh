Profile: BRListaTimeline
Parent: List
Id: 270156fd-40f7-44b0-979d-1165022df8da
Title: "Lista da Timeline"
Description: "Lista de de itens agregados na timeline um paciente."
* ^meta.lastUpdated = "2020-03-12T20:16:33.497+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRListaTimeline-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-03-12T20:16:54.7221525+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "No contexto da Rede Nacional de Dados em Saúde do Brasil, é utilizada para agregar todos os medicamentos de um paciente e simplificar sua indexação e pesquisa na rede Blockchain."
* . MS
* . ^short = "Lista"
* . ^definition = "Uma lista de recursos gerenciados."
* identifier ..0
* status MS
* status ^short = "Estado da Lista"
* status ^definition = "current: Ativa ou principal\r\nretired: Obsoleta\r\nentered-in-error: Cancelada por informação errada"
* mode = #working (exactly)
* mode MS
* title ..0
* code 1.. MS
* code from $BRClassificacaoLista-1.0 (required)
* code ^short = "Tipo da Lista"
* code ^definition = "Classifica o tipo da lista"
* code ^binding.description = "Tipo da Lista"
* code.coding 1..1
* code.coding from $BRClassificacaoLista-1.0 (required)
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^short = "Assunto da lista"
* subject ^definition = "Indivíduo a quem a lista se refere."
* subject.reference 1..
* subject.type ..0
* subject.identifier ..0
* subject.display ..0
* encounter ..0
* date 1..
* date ^short = "Data/hora da Última Atualização"
* date ^definition = "Data e hora da geração ou da última atualização da lista."
* source ..0
* orderedBy ..0
* note ..0
* entry 1.. MS
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "item.display"
* entry ^slicing.rules = #open
* entry ^short = "Itens da lista"
* entry ^definition = "Recursos referenciados nesta lista."
* entry contains
    medication 0..* MS and
    immunization 0..* MS
* entry[medication] ^short = "Itens da Lista de Medicamentos"
* entry[medication].flag 1.. MS
* entry[medication].flag from $BREstadoMedicamentoLista-1.0 (required)
* entry[medication].flag ^short = "Estado do Medicamento"
* entry[medication].flag ^definition = "dispensed: Medicamento dispensado"
* entry[medication].flag ^binding.description = "Classificação do Medicamento"
* entry[medication].flag.coding 1..1
* entry[medication].flag.coding.system 1..
* entry[medication].flag.coding.code 1..
* entry[medication].flag.coding.display ..0
* entry[medication].flag.coding.userSelected ..0
* entry[medication].flag.text ..0
* entry[medication].deleted ..0
* entry[medication].date 1.. MS
* entry[medication].date ^short = "Data/Hora do Medicamento"
* entry[medication].date ^definition = "Data ou data e hora que o medicamento foi prescrito, administrado ou dispensado."
* entry[medication].item only Reference(BRMedicamento)
* entry[medication].item MS
* entry[medication].item ^short = "Medicamento"
* entry[medication].item.reference 1..
* entry[medication].item.type ..0
* entry[medication].item.identifier ..0
* entry[medication].item.display 1.. MS
* entry[medication].item.display ^short = "Descrição do Medicamento"
* entry[immunization] ^short = "Itens da Lista de Imunobiológicos"
* entry[immunization].flag 1.. MS
* entry[immunization].flag from $BRImunobiologicoDose-1.0 (required)
* entry[immunization].flag ^short = "Dose do Imunobiológico"
* entry[immunization].flag ^binding.description = "Dose do Imunobiológico"
* entry[immunization].flag.coding 1..1
* entry[immunization].flag.coding.system 1..
* entry[immunization].flag.coding.code 1..
* entry[immunization].flag.coding.display ..0
* entry[immunization].flag.coding.userSelected ..0
* entry[immunization].flag.text ..0
* entry[immunization].deleted ..0
* entry[immunization].date 1.. MS
* entry[immunization].date ^short = "Data/Hora da Administração do Imunobiológico"
* entry[immunization].date ^definition = "Data ou data e hora que o imunobiológico foi administrado."
* entry[immunization].item only Reference(BRImunobiologicoAdministrado)
* entry[immunization].item MS
* entry[immunization].item ^short = "Imunobiológico Administrado"
* entry[immunization].item.reference 1..
* entry[immunization].item.type ..0
* entry[immunization].item.identifier ..0
* entry[immunization].item.display 1.. MS
* entry[immunization].item.display ^short = "Descrição do Imunobiológico"
* emptyReason ..0