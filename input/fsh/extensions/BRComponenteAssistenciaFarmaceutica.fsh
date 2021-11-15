Extension: BRComponenteAssistenciaFarmaceutica
Id: 6ca9186a-6b71-4837-9ee6-50cb5da88645
Title: "Componente da Assistência Farmacêutica"
Description: "Extensão para identificar o componente de Assistência Farmacêutica."
* ^meta.lastUpdated = "2020-03-13T20:29:10.926+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRComponenteAssistenciaFarmaceutica-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:29:35.0545437+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . ^short = "Componente da Assistência Farmacêutica"
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRComponenteAssistenciaFarmaceutica-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRComponenteAssistenciaFarmaceutica-1.0 (required)
* value[x] ^binding.description = "Componente da Assistência Farmacêutica"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0