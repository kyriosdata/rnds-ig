Extension: BREstrategiaCampanha
Id: BREstrategiaCampanha
Title: "Estratégia de campanha de vacinação"
Description: "Informações sobre as caracteríticas da campanha."
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstrategiaCampanha-1.0"
* ^version = "1.0"
* ^date = "2020-12-07"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Deve ser utilizado para apresentar as características de planejamento de uma campanha."
* ^context.type = #element
* ^context.expression = "Immunization.protocolApplied"
* . ..1
* . ^short = "Estratégia de campanha vacinal"
* . ^definition = "Informações sobre as caracteríticas da campanha."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    estrategiaCampanha 1..1 and
    campanha 1..1 and
    dataInicio 0..1 and
    dataTermino 0..1 and
    abrangenciaCampanha 1..1
* extension[estrategiaCampanha] from $BREstrategiaVacinacaoCampanha-1.0 (required)
* extension[estrategiaCampanha] ^short = "Estratégia da campanha"
* extension[estrategiaCampanha] ^binding.description = "Tipo de estratégia de campanha"
* extension[estrategiaCampanha].value[x] 1..
* extension[estrategiaCampanha].value[x] only CodeableConcept
* extension[campanha] from $BRCampanhaVacinacao-1.0 (required)
* extension[campanha] ^binding.description = "Nome da campanha de vacina"
* extension[campanha].value[x] 1..
* extension[campanha].value[x] only CodeableConcept
* extension[dataInicio] ^short = "Data de início do período da campanha"
* extension[dataInicio] ^definition = "Data planejada para o início da campanha vacinal."
* extension[dataInicio].value[x] 1..
* extension[dataInicio].value[x] only date
* extension[dataTermino] ^short = "Data de término do período da campanha"
* extension[dataTermino] ^definition = "Data planejada para o término da campanha vacinal."
* extension[dataTermino].value[x] 1..
* extension[dataTermino].value[x] only date
* extension[abrangenciaCampanha] from $BRAbrangencia-1.0 (required)
* extension[abrangenciaCampanha] ^short = "Abrangência da campanha vacinal"
* extension[abrangenciaCampanha] ^definition = "Abrangência planejada para a campanha vacinal."
* extension[abrangenciaCampanha] ^isModifier = false
* extension[abrangenciaCampanha] ^binding.description = "Abrangência"
* extension[abrangenciaCampanha].value[x] 1..
* extension[abrangenciaCampanha].value[x] only CodeableConcept
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstrategiaCampanha-1.0" (exactly)