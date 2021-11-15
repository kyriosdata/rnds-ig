Extension: BRQualidadeCadastroIndividuo
Id: BRQualidadeCadastroIndividuo
Title: "Qualidade do Cadastro do Indivíduo"
Description: "Grau de qualidade de um registro de um indivíduo, vai de 0 até 100."
* ^meta.lastUpdated = "2020-03-13T19:28:20.27+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRQualidadeCadastroIndividuo-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T19:28:41.6812754+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Necessário para qualificar o grau de completude de um registro."
* ^context.type = #element
* ^context.expression = "Patient"
* . ..1
* . ^short = "Qualidade do Cadastro do Indivíduo"
* . ^definition = "Grau de qualidade do registro do indivíduo."
* url only uri
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRQualidadeCadastroIndividuo-1.0" (exactly)
* value[x] 1..
* value[x] only positiveInt