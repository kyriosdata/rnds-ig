Extension: BRMunicipio
Id: BRMunicipio
Title: "Município"
Description: "Extensão para informar um município."
* ^meta.lastUpdated = "2020-03-13T19:42:21.608+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMunicipio-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T19:42:44.3852866+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Município"
* . ^definition = "Informa o município."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMunicipio-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRMunicipio-1.0 (required)
* value[x] ^binding.description = "Município"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0