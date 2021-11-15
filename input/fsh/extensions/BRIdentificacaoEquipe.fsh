Extension: BRIdentificacaoEquipe
Id: 2cc4e4e3-0f97-4b54-ab87-e73fe0758cc7
Title: "Identificador Nacional de Equipe"
Description: "Extensão para permitir informar o código do Identificador Nacional de Equipe."
* ^meta.lastUpdated = "2020-04-07T12:08:01.107+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIdentificacaoEquipe-1.0"
* ^version = "1.0"
* ^date = "2020-04-07T12:07:57.7493336+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Identificar equipes formais de trabalho no Brasil."
* ^context[0].type = #element
* ^context[=].expression = "Encounter.participant"
* ^context[+].type = #element
* ^context[=].expression = "Procedure.performer"
* . ^short = "Identificador Nacional de Equipe"
* . ^definition = "Número válido do INE no CNES."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIdentificacaoEquipe-1.0" (exactly)
* value[x] 1..
* value[x] only integer