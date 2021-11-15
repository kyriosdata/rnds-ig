Profile: BRAmostraBiologica
Parent: Specimen
Id: BRAmostraBiologica
Title: "Amostra Biológica"
Description: "Amostra de origem humana/animal usada em investigações biológicas/laboratoriais para fins diagnósticos."
* ^meta.lastUpdated = "2020-03-26T13:02:05.548+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRAmostraBiologica-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-03-26T13:02:02.6493634+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Amostra Biológica"
* . ^definition = "Amostra de origem humana/animal usada em investigações biológicas/laboratoriais para fins diagnósticos."
* identifier ..0
* identifier.use ..0
* accessionIdentifier ..0
* status ..0 N
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* type 1.. MS
* type from $BRTipoAmostra-1.0 (required)
* type ^short = "Tipo da Amostra"
* type ^definition = "Tipo do material da amostra."
* type ^binding.description = "Tipo da Amostra"
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* subject ..0
* receivedTime ..0 N
* receivedTime ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* receivedTime ^extension[=].valueCode = #4.0.0
* parent ..0
* request ..0
* collection ..0
* processing ..0
* container ..0
* condition ..0
* note ..0