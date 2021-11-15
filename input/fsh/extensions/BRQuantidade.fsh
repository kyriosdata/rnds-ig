Extension: BRQuantidade
Id: ee0344fa-7d1d-488d-9356-479b885bfedd
Title: "Quantidade"
Description: "Extensão para identificar quantidades."
* ^meta.lastUpdated = "2020-03-13T19:59:52.549+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRQuantidade-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:00:16.006533+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Procedure"
* . ^short = "Quantidade"
* . ^definition = "Identifica quantidades."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRQuantidade-1.0" (exactly)
* value[x] 1..
* value[x] only decimal or integer or positiveInt or unsignedInt