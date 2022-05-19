Extension: BRTurno
Id: BRTurno
Title: "Turno do dia"
Description: "Extensão para descrever uma unidade de tempo referenciada pelo UCUM."
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRTurno"
* ^status = #draft
* id ..0
* value[x] 1..
* value[x] only code
* value[x] from $BRTurno (required)
* value[x] ^binding.description = "Define o turno do dia"