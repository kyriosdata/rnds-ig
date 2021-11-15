Extension: BRNaturalizacao
Id: 209cde9a-5393-4f3d-b456-294c954ea6fc
Title: "Dados de Naturalização"
Description: "Extensão para as informações de naturalização de um indivíduo."
* ^meta.lastUpdated = "2020-03-11T11:33:54.751+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNaturalizacao-1.0"
* ^version = "1.0"
* ^date = "2020-03-11T11:34:13.9129444+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "Dados de Naturalização"
* . ^definition = "Informações sobre a naturalização de um indivíduo."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    arrival 0..1 and
    whenNaturalized 1..1 and
    ordinanceNaturalize 1..1
* extension[arrival] ^short = "Data de Chegada"
* extension[arrival] ^definition = "Data da chegada ao país."
* extension[arrival].value[x] 1..
* extension[arrival].value[x] only date
* extension[whenNaturalized] ^short = "Data de Naturalização"
* extension[whenNaturalized] ^definition = "Data em que o indivíduo foi naturalizado no país."
* extension[whenNaturalized].value[x] 1..
* extension[whenNaturalized].value[x] only date
* extension[ordinanceNaturalize] ^short = "Portaria de Naturalização"
* extension[ordinanceNaturalize] ^definition = "Portaria que naturalizou o indivíduo. Utilizar preferencialmente a sintaxe Portaria nº NNN/ORGAO/YYYY, DOU de DD/MM/YYYY, onde NNN é o número da Portaria, ORGAO é a estrutura da hierarquia do órgão que publicou (ex.: SE/MS, para atos publicados pela Secretaria Executiva do Ministério da Saúde), YYYY é o ano da publicação, DD/MM/YYYY é a data em que a Portaria foi publicada no DOU."
* extension[ordinanceNaturalize].value[x] 1..
* extension[ordinanceNaturalize].value[x] only string
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNaturalizacao-1.0" (exactly)