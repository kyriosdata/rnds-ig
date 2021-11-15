Extension: BRAtendeSUS
Id: BRAtendeSUS
Title: "Atende SUS?"
Description: "Extensão utilizada para identificar se um profissional ou Estabelecimento de Saúde oferece atendimento pelo Sistema Único de Saúde (SUS)."
* ^meta.lastUpdated = "2020-03-13T20:25:59.559+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRAtendeSUS-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:26:23.0414137+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context[0].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . ^short = "Atende SUS?"
* . ^definition = "Identifica se um profissional ou Estabelecimento de Saúde oferece atendimento pelo Sistema Único de Saúde (SUS)."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRAtendeSUS-1.0" (exactly)
* value[x] 1..
* value[x] only boolean