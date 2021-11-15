Extension: BRGrupoAtendimento
Id: BRGrupoAtendimento
Title: "Grupo de Atendimento"
Description: "Identificação do grupo de atendimento para vacinação."
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRGrupoAtendimento"
* ^version = "1.0"
* ^date = "2020-12-15"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Immunization"
* . ^short = "Grupo de Atendimento"
* . ^mustSupport = false
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $BRGrupoAtendimento-1.0 (required)
* value[x] ^binding.description = "Grupo de atendimento"
* value[x].coding 1..1
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0