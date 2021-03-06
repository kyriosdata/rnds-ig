Extension: BRRacaCorEtnia
Id: 0d945af8-3a09-4663-8ce2-0e4175d5cb09
Title: "Raça/Cor e Etnina"
Description: "Extensão para para representar dados relacionados à raça/cor e etnia de um indivíduo."
* ^meta.lastUpdated = "2020-03-13T19:47:18.613+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRacaCorEtnia-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T19:47:42.7344057+00:00"
* ^publisher = "Datasus"
* ^context.type = #element
* ^context.expression = "Patient"
* . ..1
* . ^short = "Raça/Cor e Etnia"
* . ^definition = "Dados relacionados à raça/cor e etnia de um indivíduo."
* . ^alias[0] = "raça"
* . ^alias[+] = "etnia"
* . ^alias[+] = "cor"
* . ^alias[+] = "cútis"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    race 1..1 and
    indigenousEthnicity 0..1
//* extension[race] from $BRRacaCor-1.0 (required)
* extension[race] ^short = "Raça/Cor"
* extension[race] ^definition = "Raça ou cor autorreferenciada por um indivíduo."
* extension[race] ^binding.description = "Raça/Cor"
* extension[race].url only uri
* extension[race].value[x] 1..
* extension[race].value[x] only CodeableConcept
* extension[race].value[x].coding 1..1
* extension[race].value[x].coding.system 1..
* extension[race].value[x].coding.code 1..
* extension[race].value[x].coding.display ..0
* extension[race].value[x].coding.userSelected ..0
* extension[race].value[x].text ..0
//* extension[indigenousEthnicity] from $BREtniaIndigena-1.0 (required)
* extension[indigenousEthnicity] ^short = "Etnia Indígena"
* extension[indigenousEthnicity] ^definition = "Etnia indígena atribuída a um indivíduo"
* extension[indigenousEthnicity] ^binding.description = "Etnia Indígena"
* extension[indigenousEthnicity].value[x] 1..
* extension[indigenousEthnicity].value[x] only CodeableConcept
* extension[indigenousEthnicity].value[x].coding 1..1
* extension[indigenousEthnicity].value[x].coding.system 1..
* extension[indigenousEthnicity].value[x].coding.code 1..
* extension[indigenousEthnicity].value[x].coding.display ..0
* extension[indigenousEthnicity].value[x].coding.userSelected ..0
* extension[indigenousEthnicity].value[x].text ..0
* url only uri
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRacaCorEtnia-1.0" (exactly)