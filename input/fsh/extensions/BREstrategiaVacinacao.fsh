Extension: BREstrategiaVacinacao
Id: BREstrategiaVacinacao
Title: "Estratégia de Vacinação"
Description: "Identifica a estratégia de vacinação adotada."
* ^meta.lastUpdated = "2020-03-13T18:10:36.355+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstrategiaVacinacao-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T18:10:59.8218584+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Informação sobre o tipo de estratégia referente ao imunobiológico administrado."
* ^context.type = #element
* ^context.expression = "Immunization.protocolApplied"
* . ^short = "Estratégia de Vacinação"
* . ^definition = "Identifica a estratégia de vacinação adotada."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstrategiaVacinacao-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BREstrategiaVacinacao-1.0 (required)
* value[x] ^binding.description = "Estratégia de Vacinação"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0