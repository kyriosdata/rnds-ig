Profile: BRMedicamento
Parent: Medication
Id: BRMedicamento
Title: "Medicamento"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMedicamento"
* ^version = "01.00"
* ^status = #draft
* id ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains BRCodigoSerialMedicamento named serialCode 0..1
* identifier ..0
* code 1..
* code from $BRTerminologiaMedicamento (preferred)
* code ^short = "Nome do Medicamento"
* code ^definition = "Nome e terminologia do medicamento fabricado."
* code ^binding.description = "Define a terminologia de um dado medicamento."
* code.id ..0
* code.coding 1..1
* code.coding.id ..0
* code.coding.system 1..
* code.coding.version ^short = "Versão da terminologia - se relevante"
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ^short = "Nome da terminologia"
* status ..0
* manufacturer ..0
* form from $BRUnidadeMedidaMedicamento (required)
* form ^short = "Unidade de medida do medicamento"
* form ^definition = "Unidade de medida do medicamento prescrito (ex.: comprimido, cápsula, frasco, caixa etc.)."
* form ^binding.description = "Unidade de medida do medicamento"
* amount ..0
* ingredient ..0
* batch ^short = "Detalhes sobre a medicação."
* batch ^definition = "Informação sobre lote e validade da medicação."
* batch.id ..0
* batch.lotNumber ^short = "Lote de medicamento."
* batch.lotNumber ^definition = "RN14: Se medicamento serializado/Datamatrix - Elemento lot do XML para grupo  IUM."
* batch.expirationDate ^short = "Data de validade do medicamento."