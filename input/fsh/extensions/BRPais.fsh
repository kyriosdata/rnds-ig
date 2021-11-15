Extension: BRPais
Id: 26b68721-2e7f-48a1-84b2-4d71cc9751f5
Title: "País"
Description: "Extensão para representar um país."
* ^meta.lastUpdated = "2020-03-13T21:06:10.279+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPais-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T21:06:33.7291792+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Identificar origem, nacionalidade, região etc."
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "País"
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPais-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRPais-1.0 (required)
* value[x] ^binding.description = "País"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0