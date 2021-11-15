Extension: BRValorMonetario
Id: 0a10269f-4d8d-4cbc-b06f-762fb595e248
Title: "Valor Monetário"
Description: "Um valor monetário em Reais brasileiros / BRL / R$ para qualquer finalidade."
* ^meta.lastUpdated = "2020-03-11T02:14:22.591+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRValorMonetario-1.0"
* ^version = "1.0"
* ^date = "2020-03-11T02:14:21.1503424+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRValorMonetario-1.0" (exactly)
* value[x] 1..
* value[x] only Money
* value[x].value 1..
* value[x].value ^short = "Valor"
* value[x].value ^definition = "Valor decimal monetário."
* value[x].currency 1..
* value[x].currency ^short = "Moeda"
* value[x].currency ^definition = "Código da moeda utilizando o padrão da ISO 4217."