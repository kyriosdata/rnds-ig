Extension: BRFinanciamento
Id: 3d75211e-ccb6-4e01-b965-05382abfae5d
Title: "Financiamento"
Description: "Extensão utilizada para identificar financiamento."
* ^meta.lastUpdated = "2020-04-07T17:02:20.726+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRFinanciamento-1.0"
* ^version = "1.0"
* ^date = "2020-04-07T17:02:17.5770638+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Encounter.diagnosis.condition"
* . ^short = "Financiamento"
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRFinanciamento-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRFinanciamento-1.0 (required)
* value[x] ^binding.description = "Financiamento"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0