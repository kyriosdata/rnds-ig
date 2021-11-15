Extension: BRAdministradorTerceiro
Id: BRAdministradorTerceiro
Title: "Gerente/Administrador (Terceiro) ou Interveniente"
Description: "Identifica organizações que são gerentes/administradoras (terceiras) ou intervenientes de outras."
* ^meta.lastUpdated = "2020-03-13T20:45:48.345+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRAdministradorTerceiro-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:46:11.8055992+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "Gerente/Administrador (Terceiro) ou Interveniente"
* . ^definition = "Identifica organizações que são gerentes/administradoras (terceiras) ou intervenientes de outras."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRAdministradorTerceiro-1.0" (exactly)
* value[x] 1..
* value[x] only Reference(BRPessoaJuridicaProfissionalLiberal)
* value[x].reference 1..
* value[x].type ..0
* value[x].identifier ..0
* value[x].display ..0