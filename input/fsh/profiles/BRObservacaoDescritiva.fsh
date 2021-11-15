Profile: BRObservacaoDescritiva
Parent: Observation
Id: f0d41273-772c-425f-bb60-2507efddff01
Title: "Observação Descritiva"
Description: "Descrições textuais simples sobre um paciente."
* ^meta.lastUpdated = "2020-03-11T02:15:49.943+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRObservacaoDescritiva-1.0"
* ^version = "1.0"
* ^date = "2020-03-11T02:15:49.3292398+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* identifier ..0
* basedOn ..0
* partOf ..0
* status MS
* status from $BREstadoObservacao-1.0 (required)
* status ^short = "Estado da Observação"
* status ^binding.description = "Estado da Observação"
* category ..0
* code MS
* code from $BRTipoObservacao-1.0 (required)
* code ^short = "Tipo da Observação"
* code ^binding.description = "Tipo de Observação"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject.type = "Patient" (exactly)
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* focus ..0
* encounter ..0
* effective[x] ..0
* issued 1.. MS
* issued ^short = "Data/hora da Observação"
* issued ^definition = "Data ou data e hora que a Observação foi escrita."
* performer ..0
* value[x] only string
* value[x] MS
* value[x] ^short = "Observação"
* value[x] ^definition = "Texto da observação."
* value[x] ^alias[0] = "Declaração subjetiva do indivíduo para o atendimento"
* value[x] ^alias[+] = "Resumo da evolução clínica do indivíduo durante a internação"
* value[x] ^alias[+] = "Dados do desfecho"
* value[x] ^alias[+] = "Informações adicionais/complementares"
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0