Extension: BRIndicadorPresencaAdmissao
Id: 66fe4a9e-184c-435c-ac3e-680bac8346cf
Title: "Indicador de Presença na Admissão"
Description: "Extensão para a informação do Indicador de Presença na Admissão."
* ^meta.lastUpdated = "2020-04-07T13:41:05.276+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndicadorPresencaAdmissao-1.0"
* ^version = "1.0"
* ^date = "2020-04-07T13:41:00.4254619+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "O Indicador de Presença na Admissão é utilizado para identifica se um problema/diagnóstico é previamente conhecido na admissão de um indivíduo no contato assistencial."
* ^context[0].type = #element
* ^context[=].expression = "Encounter.reasonReference"
* ^context[+].type = #element
* ^context[=].expression = "Encounter.diagnosis.condition"
* . ..1
* . ^short = "Indicador de Presença na Admissão"
* . ^definition = "Identifica se o problema/diagnóstico é previamente conhecido na admissão do indivíduo para o contato assistencial. Utilizar true para Sim, false para Não e null para Desconhecido."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndicadorPresencaAdmissao-1.0" (exactly)
* value[x] 1..
* value[x] only boolean