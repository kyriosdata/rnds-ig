Extension: BRSituacaoCondicaoIndividuo
Id: BRSituacaoCondicaoIndividuo
Title: "Situação/Condição do Indivíduo"
Description: "Extensão para especificar a situação ou condicação de um indivíduo num contexto."
* ^meta.lastUpdated = "2020-03-13T19:46:57.792+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRSituacaoCondicaoIndividuo-1.0"
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-03-13T19:47:21.2601861+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Immunization"
* . ^short = "Situação/Condição do Indivíduo"
* . ^definition = "Especifica a situação ou condição do invdivíduo."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRSituacaoCondicaoIndividuo-1.0" (exactly)
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $BRSituacaoCondicaoIndividuo-1.0 (required)
* value[x] ^binding.description = "Situação/Condição Indivíduo"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0