Extension: BRPosicaoIndividuo
Id: BRPosicaoIndividuo
Title: "Posição do Indivíduo"
Description: "Extensão para indicar a posição do indivíduo."
* ^meta.lastUpdated = "2020-03-13T19:44:56.838+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPosicaoIndividuo-1.0"
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-03-13T19:45:20.2987652+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^context.type = #fhirpath
* ^context.expression = "BRObservacaoMensurada"
* . ..1
* . ^short = "Posição do indivíduo"
* . ^definition = "Posição do indivíduo no momento da ação/procedimento."
* url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPosicaoIndividuo-1.0" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $BRPosicaoIndividuo-1.0 (required)
* value[x] ^definition = "ValueSet utilizado para identificar a posição do indivíduo no momento da ação/procedimento."
* value[x] ^binding.description = "Posição do indivíduo na aferição"
* value[x].coding 1..1
* value[x].coding.display ..0
* value[x].coding.userSelected ..0
* value[x].text ..0