Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-2
InstanceOf: BRPrescricaoMedicamento
Usage: #inline
* status = #completed
* intent = #order
* medicationReference.reference = "urn:uuid:transient-2"
* subject.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuo-1.0"
* subject.identifier.value = "712176901347489"
* authoredOn = "2022-03-04"
* requester.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BREstabelecimentoSaude-1.0"
* requester.identifier.value = "6156002"
* recorder.identifier.system = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProfissional-1.0"
* recorder.identifier.value = "162338254590005"
* note.authorString = "Dr. Getúlio"
* note.time = "2022-03-04"
* note.text = "Medicamento necessário para tratamento da febre devido à gripe."
* dosageInstruction.patientInstruction = "Tomar uma vez ao dia via oral."
* dosageInstruction.timing.repeat.count = 1
* dosageInstruction.timing.repeat.countMax = 10
* dosageInstruction.timing.repeat.frequency = 12
* dosageInstruction.timing.repeat.extension[0].url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRTurno"
* dosageInstruction.timing.repeat.extension[=].valueCode = #3
* dosageInstruction.timing.repeat.extension[+].url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIntervaloDoses"
* dosageInstruction.timing.repeat.extension[=].extension[0].url = "periodUnit"
* dosageInstruction.timing.repeat.extension[=].extension[=].valueCode = #min
* dosageInstruction.timing.repeat.extension[=].extension[+].url = "period"
* dosageInstruction.timing.repeat.extension[=].extension[=].valuePositiveInt = 1
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.route = $BRViaAdministracao#10907
* dosageInstruction.doseAndRate.type = $BRUnidadeMedida#13
* dosageInstruction.doseAndRate.doseQuantity.value = 10
* dosageInstruction.maxDosePerAdministration.value = 10
* dispenseRequest.validityPeriod.start = "2022-02-24"
* dispenseRequest.validityPeriod.end = "2022-03-03"
* dispenseRequest.quantity.value = 10