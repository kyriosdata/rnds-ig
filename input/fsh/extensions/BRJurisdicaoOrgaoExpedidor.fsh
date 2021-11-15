Extension: BRJurisdicaoOrgaoExpedidor
Id: e93a2b50-3f50-4670-8242-8b9af26a3584
Title: "Jurisdição do Órgão Expedidor"
Description: "Jurisdição de Órgãos Expedidores"
* ^meta.lastUpdated = "2020-03-13T20:01:09.625+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRJurisdicaoOrgaoEmissor-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T20:01:33.7451754+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #element
* ^context.expression = "Patient.identifier"
* . ..1
* . ^short = "Jurisdição do Órgão Expedidor"
* . ^definition = "Unidade Federativa ou o número da região do Órgão Expedidor de um documento."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRJurisdicaoOrgaoEmissor-1.0" (exactly)
* value[x] only positiveInt or CodeableConcept
* value[x] from $BRUnidadeFederativa-1.0 (required)
* value[x] ^binding.description = "Unidade Federativa"