Extension: BROperadorDigitador
Id: BROperadorDigitador
Title: "Identificador do digitador"
Description: "Identificação do operador / digitador que realizou a entrada de dados a partir da transcrição do registro de um profissional de saúde."
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BROperadorDigitador-1.0"
* ^version = "1.0"
* ^date = "2020-12-14"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Para identificar o operador / digitador que realizou a entrada de dados a partir da transcrição do registro de um profissional de saúde."
* ^context.type = #element
* ^context.expression = "Composition"
* . ..1
* . ^short = "Identificador do digitador ou operador"
* . ^definition = "Identificação do operador / digitador que realizou a entrada de dados a partir da transcrição do registro de um profissional de saúde."
* . ^mustSupport = false
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BROperadorDigitador-1.0" (exactly)
* value[x] 1.. MS
* value[x] only Reference(BRProfissional)
* value[x] ^short = "Profissional"
* value[x].reference ..0
* value[x].type ..0
* value[x].identifier 1..
* value[x].identifier.use ..0
* value[x].identifier.type ..0
* value[x].identifier.system 1..
* value[x].identifier.value 1..
* value[x].identifier.period ..0
* value[x].identifier.assigner ..0
* value[x].display ..0