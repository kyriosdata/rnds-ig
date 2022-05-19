Profile: BRPrescricaoMedicamento
Parent: MedicationRequest
Id: BRPrescricaoMedicamento
Title: "Prescrição de Medicamento"
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRPrescricaoMedicamento"
* ^version = "01.00"
* ^status = #draft
* implicitRules ..0
* language ..0
* text ^short = "Posologia não estruturada"
* text ^definition = "Descrição da posologia de medicamento de forma livre, em texto. O profissional prescritor deverá descrever todos os campos necessários a uma posologia, entre outros elementos relevantes."
* contained ..0
* identifier ..0
* statusReason ..0
* category ..0
* priority ..0
* doNotPerform ..0
* reported[x] ..0
* medication[x] only Reference(BRMedicamento)
* medication[x] ^short = "Medicamento"
* medication[x] ^definition = "Identificação e informações sobre o medicamento prescrito."
* medication[x].type ..0
* medication[x].identifier.use ..0
* medication[x].identifier.type ..0
* medication[x].identifier.period ..0
* medication[x].identifier.assigner ..0
* medication[x].display ..0
* subject only Reference(Patient or $BRIndividuo-1.0)
* subject ^short = "Sujeito da Composição"
* subject ^definition = "Quem ou o quê a composição se refere. Pode ser um indivíduo, dispositivo, grupos (de indivíduos, dispositivos etc.)."
* subject.reference ..0
* subject.type ..0
* subject.identifier 1..
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* encounter ..0
* supportingInformation ..0
* authoredOn 1..
* authoredOn ^short = "Data e hora da prescrição"
* authoredOn ^definition = "Data e hora da prescrição realizada."
* requester only Reference($BREstabelecimentoSaude-1.0)
* requester ^short = "Estabelecimento de Saúde prescritor"
* requester ^definition = "Identifica pelo número de inscrição no Cadastro Nacional de Estabelecimentos de Saúde o Estabelecimento de Saúde que realizou a prescrição de medicamento."
* requester.reference ..0
* requester.type ..0
* requester.identifier 1..
* requester.identifier.use ..0
* requester.identifier.type ..0
* requester.identifier.period ..0
* requester.identifier.assigner ..0
* requester.display ..0
* performer ..0
* performerType ..0
* recorder 1..
* recorder only Reference($BRProfissional-1.0)
* recorder ^short = "Profissional prescritor"
* recorder ^definition = "Identificação e informações do profissional que realizou a prescrição de medicamento."
* recorder.reference ..0
* recorder.type ..0
* recorder.identifier 1..
* recorder.identifier.use ..0
* recorder.identifier.type ..0
* recorder.identifier.period ..0
* recorder.identifier.assigner ..0
* recorder.display ..0
* reasonCode ..0
* reasonReference ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* groupIdentifier ..0
* courseOfTherapyType ..0
* insurance ..0
* note 1..1
* note ^short = "Descrição da necessidade de uso do medicamento"
* note ^definition = "Descrição de uso do medicamento indicado para o caso de uma necessidade específica (ex.: dor, febre, após tratamento etc.)"
* dosageInstruction ..1
* dosageInstruction.sequence ..0
* dosageInstruction.text ^short = "Posologia não estruturada"
* dosageInstruction.text ^definition = "Descrição da posologia de medicamento de forma livre, em texto. O profissional prescritor deverá descrever todos os campos necessários a uma posologia, entre outros elementos relevantes."
* dosageInstruction.additionalInstruction ..0
* dosageInstruction.patientInstruction ^short = "Orientações sobre o uso do medicamento"
* dosageInstruction.patientInstruction ^definition = "Orientações sobre o uso do medicamento prescrito."
* dosageInstruction.timing ^short = "Frequência de uso do medicamento"
* dosageInstruction.timing.event ..0
* dosageInstruction.timing.repeat 1..
* dosageInstruction.timing.repeat.extension ^slicing.discriminator.type = #value
* dosageInstruction.timing.repeat.extension ^slicing.discriminator.path = "url"
* dosageInstruction.timing.repeat.extension ^slicing.rules = #open
* dosageInstruction.timing.repeat.extension contains
    BRIntervaloDoses named period 1..1 and
    BRTurno named when 1..1
* dosageInstruction.timing.repeat.extension[when].value[x].id ..0
* dosageInstruction.timing.repeat.bounds[x] ..0
* dosageInstruction.timing.repeat.count 1..
* dosageInstruction.timing.repeat.count ^short = "Repetições de dose"
* dosageInstruction.timing.repeat.count ^definition = "Número de doses a cada uso do medicamento (ex.: 1x, 2x, 3x 4x etc.)"
* dosageInstruction.timing.repeat.countMax 1..
* dosageInstruction.timing.repeat.countMax ^short = "Quantidade total de doses"
* dosageInstruction.timing.repeat.countMax ^definition = "Representa a quantidade total de doses prescritas para o medicamento: se for mais de uma, deve ser considerado como 'Dose Contínua'; do contrário, deve ser considerado como 'Dose Única'."
* dosageInstruction.timing.repeat.duration ..0
* dosageInstruction.timing.repeat.durationMax ..0
* dosageInstruction.timing.repeat.durationUnit ..0
* dosageInstruction.timing.repeat.frequency ^short = "Intervalo de dose"
* dosageInstruction.timing.repeat.frequency ^definition = "Intervalo, em horas, de cada uso do medicamento."
* dosageInstruction.timing.repeat.frequencyMax ..0
* dosageInstruction.timing.repeat.period ..0
* dosageInstruction.timing.repeat.period ^short = "Intervalo entre doses"
* dosageInstruction.timing.repeat.period ^definition = "Descritor quantitativo da unidade de tempo entre doses."
* dosageInstruction.timing.repeat.periodMax ..0
* dosageInstruction.timing.repeat.periodUnit ..0
* dosageInstruction.timing.repeat.periodUnit ^short = "Unidade de tempo entre doses"
* dosageInstruction.timing.repeat.periodUnit ^definition = "Unidade de tempo entre doses (ex.: hora, dia, semana, mês etc.), em unidades  UCUM."
* dosageInstruction.timing.repeat.dayOfWeek ..0
* dosageInstruction.timing.repeat.timeOfDay ..0
* dosageInstruction.timing.repeat.when ..0
* dosageInstruction.timing.repeat.when ^short = "Turno do dia"
* dosageInstruction.timing.repeat.when ^definition = "Em qual momento do dia ocorre o consumo do medicamento: Manhã, tarde, noite."
* dosageInstruction.timing.repeat.offset ..0
* dosageInstruction.timing.code ..0
* dosageInstruction.asNeeded[x] only boolean
* dosageInstruction.asNeeded[x] ^short = "Uso se necessário"
* dosageInstruction.asNeeded[x] ^definition = "Representa a necessidade do uso contínuo do medicamento."
* dosageInstruction.site ..0
* dosageInstruction.route 1..
* dosageInstruction.route from $BRViaAdministracao-1.0 (required)
* dosageInstruction.route ^short = "Via de Administração"
* dosageInstruction.route ^definition = "Via de Adiministração do medicamento prescrito."
* dosageInstruction.route ^binding.description = "Via de Administração"
* dosageInstruction.method ..0
* dosageInstruction.doseAndRate ..1
* dosageInstruction.doseAndRate.type 1..
* dosageInstruction.doseAndRate.type from $BRUnidadeConsumo (required)
* dosageInstruction.doseAndRate.type ^short = "Unidade de consumo da dose"
* dosageInstruction.doseAndRate.type ^definition = "Unidade de consumo do medicamento prescrito (ex.: comprimido, cápsula, aplicação, mL, gota, copo dosador, infusão etc.)."
* dosageInstruction.doseAndRate.type ^binding.description = "Unidade de consumo da dose"
* dosageInstruction.doseAndRate.type.coding from $BRUnidadeConsumo (required)
* dosageInstruction.doseAndRate.type.coding ^binding.description = "Determina a unidade de consumo"
* dosageInstruction.doseAndRate.type.coding.version ..0
* dosageInstruction.doseAndRate.type.coding.display ..0
* dosageInstruction.doseAndRate.type.coding.userSelected ..0
* dosageInstruction.doseAndRate.type.text ..0
* dosageInstruction.doseAndRate.dose[x] 1..
* dosageInstruction.doseAndRate.dose[x] only Quantity
* dosageInstruction.doseAndRate.dose[x] ^short = "Quantidade da Dose"
* dosageInstruction.doseAndRate.dose[x] ^definition = "Quantidade da unidade de consumo do medicamento prescrito a cada dose."
* dosageInstruction.doseAndRate.dose[x].unit ..0
* dosageInstruction.doseAndRate.dose[x].system ..0
* dosageInstruction.doseAndRate.dose[x].code ..0
* dosageInstruction.doseAndRate.rate[x] ..0
* dosageInstruction.doseAndRate.rate[x] only Quantity
* dosageInstruction.maxDosePerPeriod ..0
* dosageInstruction.maxDosePerAdministration 1..
* dosageInstruction.maxDosePerAdministration ^short = "Quantidade a ser dispensada por atendimento"
* dosageInstruction.maxDosePerAdministration ^definition = "Quantidade máxima da dose a ser dispensada por atendimento."
* dosageInstruction.maxDosePerAdministration.unit ..0
* dosageInstruction.maxDosePerAdministration.system ..0
* dosageInstruction.maxDosePerAdministration.code ..0
* dosageInstruction.maxDosePerLifetime ..0
* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.dispenseInterval ^short = "Intervalo em horas de cada dose do medicamento"
* dispenseRequest.dispenseInterval ^definition = "Intervalo, em horas, de cada uso do medicamento."
* dispenseRequest.validityPeriod 1..
* dispenseRequest.validityPeriod ^short = "Duração de uso do medicamento"
* dispenseRequest.validityPeriod ^definition = "Representa a duração do uso do medicamento prescrito."
* dispenseRequest.numberOfRepeatsAllowed ..0
* dispenseRequest.quantity 1..
* dispenseRequest.quantity ^short = "Total do tratamento"
* dispenseRequest.quantity.value 1..
* dispenseRequest.quantity.unit ..0
* dispenseRequest.quantity.system ..0
* dispenseRequest.quantity.code ..0
* dispenseRequest.expectedSupplyDuration ..0
* dispenseRequest.performer ..0
* substitution ..0
* priorPrescription ..0
* detectedIssue ..0
* eventHistory ..0