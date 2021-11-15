Extension: BROcupacao
Id: c8f43e8f-28c7-4872-9aa1-1405d22f0f51
Title: "Ocupação"
* ^meta.lastUpdated = "2020-03-13T16:47:48.012+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BROcupacao-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T16:48:11.5337086+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Encounter.participant"
* . ^short = "Ocupação"
* . ^definition = "Extensão para identificar ocupações."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BROcupacao-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BROcupacao-1.0 (required)
* value[x] ^binding.description = "Ocupação"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0