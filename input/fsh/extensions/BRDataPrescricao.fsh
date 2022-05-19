Extension: BRDataPrescricao
Id: BRDataPrescricao
Title: "Data de Prescrição"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRDataPrescricao"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* id ..0
* value[x] 1..
* value[x] only dateTime
* value[x] ^short = "Data de prescrição do medicamento"