Profile: BRMedicamentoDispensado
Parent: MedicationDispense
Id: 17e2d3ae-3c74-4b22-8e95-560ab209d7df
Title: "Medicamento Dispensado"
Description: "Detalha os atos de dispensação de medicamentos."
* ^meta.lastUpdated = "2020-03-13T20:30:07.284+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMedicamentoDispensado-1.0"
* ^version = "1.0"
* ^status = #draft
* ^date = "2020-03-13T20:30:31.4080018+00:00"
* ^publisher = "Ministerio da Saúde do Brasil"
* . MS
* . ^short = "Medicamento Dispensado"
* . ^definition = "Detalha os atos de dispensação de medicamentos."
* . ^alias[0] = "Droga dispensada"
* . ^alias[+] = "Fármaco dispensado"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    BRComponenteAssistenciaFarmaceutica named component 0..1 MS and
    BRProgramaSaude named healthProgram 0..1 MS and
    BRValorMonetario named amount 0..1 MS
* extension[healthProgram] ^definition = "Programa de saúde ao qual o medicamento dispensado está associado."
* extension[amount] ^short = "Valor do Medicamento"
* extension[amount] ^definition = "Valor monetário do medicamento."
* extension[amount].value[x].value MS
* extension[amount].value[x].currency = #BRL (exactly)
* extension[amount].value[x].currency MS
* status MS
* status ^short = "Estado da Dispensação"
* status ^definition = "completed: finalizada\r\nentered-in-error: cancelada por informação incorreta."
* category ..0
* medication[x] only Reference(BRMedicamento)
* medication[x] MS
* medication[x] ^short = "Medicamento"
* medication[x] ^definition = "Identifica o medicamento que foi dispensado."
* medication[x].reference 1..
* medication[x].type ..0
* medication[x].identifier ..0
* medication[x].display ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^short = "Indivíduo da Dispensação"
* subject ^definition = "Indivíduo para quem o medicamento foi dispensado."
* subject.type ..0
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* performer MS
* performer.function ..0
* performer.actor only Reference(BRProfissional or BRLotacaoProfissional or BRPessoaJuridicaProfissionalLiberal)
* performer.actor MS
* performer.actor.reference 1..
* performer.actor.type ..0
* performer.actor.identifier ..0
* performer.actor.display ..0
* quantity 1.. MS
* quantity ^short = "Quantidade Dispensada"
* quantity ^definition = "Quantidade do medicamento que foi dispensado."
* quantity.value 1.. MS
* quantity.value ^short = "Valor"
* quantity.value ^definition = "Valor numérico que representa a quantidade."
* quantity.unit 1.. MS
* quantity.unit from $BRUnidadeFarmaceutica-1.0 (required)
* quantity.unit ^short = "Unidade Farmacêutica"
* quantity.unit ^definition = "Unidade de medida para a quantidade que foi dispensada."
* quantity.unit ^binding.description = "Unidade Farmacêutica"
* whenHandedOver 1.. MS
* whenHandedOver ^short = "Data/hora da Dispensação"
* whenHandedOver ^definition = "A data ou data e hora que o medicamento foi dispensado para o indivíduo ou seu representante legal."
* dosageInstruction MS
* dosageInstruction ^short = "Instruções de Uso"
* dosageInstruction ^definition = "Indica como o medicamento deverá ser utilizado pelo indivíduo."
* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "Temporalidade do Uso"
* dosageInstruction.timing ^definition = "Quando o medicamento deverá ser utilizado pelo indivíduo."
* dosageInstruction.timing.repeat ^short = "Agendamento do Uso"
* dosageInstruction.timing.repeat ^definition = "Regras que descrevem o agendamento do uso do medicamento."
* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.duration ^short = "Duração do Uso"
* dosageInstruction.timing.repeat.duration ^definition = "Por quanto tempo o medicamento deverá ser utilizado."
* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.durationUnit ^short = "Unidade da Duração"
* dosageInstruction.timing.repeat.durationUnit ^definition = "Intervalo de tempo que a duração representa.\r\ns: segundo\r\nmin: minuto\r\nh: hora\r\nd: dia\r\nwk: semana\r\nmo:mês\r\na: ano"
* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequency ^short = "Frequência"
* dosageInstruction.timing.repeat.frequency ^definition = "Número de vezes que o uso da medicação deverá ser repetida no período especificado."
* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.period ^short = "Período"
* dosageInstruction.timing.repeat.period ^definition = "Período em que a frequência deverá ser repetida. Ex.: 3 vezes por dia, 3 é a frequência, dia é o período."
* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit ^short = "Unidade do Período"
* dosageInstruction.timing.repeat.periodUnit ^definition = "Intervalo de tempo que o período representa.\r\ns: segundo\r\nmin: minuto\r\nh: hora\r\nd: dia\r\nwk: semana\r\nmo:mês\r\na: ano"