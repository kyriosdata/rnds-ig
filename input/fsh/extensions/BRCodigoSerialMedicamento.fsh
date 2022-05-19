Extension: BRCodigoSerialMedicamento
Id: BRCodigoSerialMedicamento
Title: "Código Serial de Medicamento"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRCodigoSerialMedicamento"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Medication"
* id ..0
* value[x] 1..
* value[x] only string
* value[x] ^short = "Código serial da unidade de medicamento"