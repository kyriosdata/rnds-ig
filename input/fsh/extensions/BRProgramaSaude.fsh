Extension: BRProgramaSaude
Id: a495e791-173d-4175-bced-da4b42fa0ce1
Title: "Programa de Saúde"
Description: "Extensão para identificar o programa de saúde."
* ^meta.lastUpdated = "2020-03-13T20:29:03.976+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProgramaSaude-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:29:28.0958213+00:00"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . ^short = "Programa de Saúde"
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProgramaSaude-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRProgramaSaude-1.0 (required)
* value[x] ^binding.description = "Programa de Saúde"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0