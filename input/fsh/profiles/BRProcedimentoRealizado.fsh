Profile: BRProcedimentoRealizado
Parent: Procedure
Id: 33f94efe-eda9-4cdf-b3a1-4b2e0d5dfba9
Title: "Procedimento Realizado"
Description: "Procedimento realizado em um indivíduo."
* ^meta.lastUpdated = "2020-04-08T11:32:29.79+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProcedimentoRealizado-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-04-08T11:32:31.3117037+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Procedimento Realizado"
* . ^definition = "Ação de saúde realizada no indivíduo."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains BRQuantidade named quantity 1..1
* extension[quantity] ^definition = "Quantidade realizada do procedimento."
* extension[quantity].value[x] only positiveInt
* identifier ..1 MS
* identifier.use ..0
* identifier.type 1..
* identifier.type = $BRTipoIdentificador#AUTH (exactly)
* identifier.type from $BRTipoIdentificadorProcedimento-1.0 (required)
* identifier.type ^short = "Tipo de Identificador"
* identifier.type ^binding.description = "Tipo de Identificador"
* identifier.type.coding 1..1
* identifier.type.coding.system 1..
* identifier.type.coding.code 1..
* identifier.type.coding.display ..0
* identifier.type.coding.userSelected ..0
* identifier.type.text ..0
* identifier.system ..0
* identifier.value 1..
* identifier.value ^short = "Código de Autorização"
* identifier.value ^definition = "Código do identificador da permissão para a realização do procedimento."
* identifier.period ..0
* identifier.assigner ..0
* instantiatesCanonical ..0 N
* instantiatesCanonical ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* instantiatesCanonical ^extension[=].valueCode = #4.0.0
* instantiatesUri ..0 N
* instantiatesUri ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* instantiatesUri ^extension[=].valueCode = #4.0.0
* basedOn ..0
* partOf ..0
* status MS N
* status from $BREstadoEvento-1.0 (required)
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* status ^short = "Estado do Procedimento"
* status ^definition = "Estado da realização do procedimento."
* status ^comment = "Na primeira fase da RNDS somente serão informados procedimentos realizados ou cancelados (com erro), portanto, somente o valor completed será aceito."
* status ^binding.description = "Estado do Evento"
* statusReason ..0
* category ..0
* code 1.. MS
* code from $BRProcedimentosNacionais-1.0 (required)
* code ^short = "Procedimento Realizado"
* code ^definition = "Identificação do procedimento que foi realizado."
* code ^binding.description = "Classificações Nacionais de Procedimentos"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* code.coding.display ..0
* code.coding.userSelected ..0
* code.text ..0
* subject only Reference(BRIndividuo)
* subject MS
* subject ^short = "Indivíduo"
* subject ^definition = "Indivíduo em que o procedimento foi realizado."
* subject.extension ^slicing.discriminator.type = #value
* subject.extension ^slicing.discriminator.path = "url"
* subject.extension ^slicing.rules = #open
* subject.extension ^min = 0
* subject.extension contains
    BRIndividuoNaoIdentificado named unidentifiedPatient 0..1
* subject.extension[unidentifiedPatient] only BRIndividuoNaoIdentificado
* subject.extension[unidentifiedPatient] ^sliceName = "unidentifiedPatient"
* subject.extension[unidentifiedPatient] ^short = "Dados do Indivíduo Não Identificado"
* subject.extension[unidentifiedPatient] ^min = 0
* subject.extension[unidentifiedPatient] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension ^slicing.discriminator.type = #value
* subject.extension[unidentifiedPatient].extension ^slicing.discriminator.path = "url"
* subject.extension[unidentifiedPatient].extension ^slicing.rules = #open
* subject.extension[unidentifiedPatient].extension[gender] ^sliceName = "gender"
* subject.extension[unidentifiedPatient].extension[gender] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension[birthYear] ^sliceName = "birthYear"
* subject.extension[unidentifiedPatient].extension[birthYear] ^mustSupport = true
* subject.extension[unidentifiedPatient].extension[reason] ^sliceName = "reason"
* subject.extension[unidentifiedPatient].extension[reason] ^mustSupport = true
* subject.reference ..0
* subject.type ..0
* subject.type ^short = "Recurso do sujeito"
* subject.type ^definition = "Indica o recurso FHIR que será utilizado na RNDS para identificar de forma direta o sujeito que do procedimento."
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* encounter ..0
* performed[x] 1.. MS N
* performed[x] only dateTime
* performed[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* performed[x] ^extension[=].valueCode = #4.0.0
* performed[x] ^short = "Momento da Realização do Procedimento"
* performed[x] ^definition = "Competência (mês e ano), data ou data e hora que o procedimento foi realizado."
* recorder ..0
* asserter ..0
// * performer contains 
//     practitioner 1.. MS
// * performer[practitioner] ^short = "Executante"
// * performer[practitioner] ^definition = "Permite identificar:\r\n- o(s) profissional(is) lotado(s) em um Estabelecimento de Saúde inscrito no CNES que realizou(aram) o procedimento, sua(s) respectiva(s) ocupação(ões) e o Estabelecimento de Saúde Terceiro (quando aplicável) - OPÇÃO PREFERENCIAL;\r\n- apenas a(s) ocupação(ões) do(s) profisssional(is) que realizou(aram) o procedimento, seu(s) Estabelecimento(s) de Saúde inscrito(s) no CNES e o Estabelecimento de Saúde Terceiro (quando aplicável) - OPÇÃO ALTERNATIVA quando o profissional não está inscrito no respectivo CNES ou o modelo de origem não disponha dessa informação;\r\n- apenas a(s) ocupação(ões) do(s) profisssional(is) que realizou(aram) o procedimento, a(s) organização(ões) identificada(s) pelo CNPJ (pessoa jurídica) ou CPF (profissional liberal) onde o procedimento foi realizado e o Estabelecimento de Saúde Terceiro (quando aplicável) - ÚLTIMA OPÇÃO, utilizar apenas quando o estabelecimento de saúde não possui inscrição no CNES ou o modelo de origem não disponha dessa informação."
// * performer[practitioner].extension ^slicing.discriminator.type = #value
// * performer[practitioner].extension ^slicing.discriminator.path = "url"
// * performer[practitioner].extension ^slicing.rules = #open
// * performer[practitioner].extension ^min = 0
// * performer[practitioner].extension contains 
//     BRIdentificacaoEquipe named healthcareTeam 0..1 MS
// * performer[practitioner].extension[healthcareTeam] ^short = "Equipe de Saúde"
// * performer[practitioner].extension[healthcareTeam] ^definition = "Identifica a equipe de saúde que realizou o procedimento utilizando o Identificador Nacional de Equipes."
// * performer[practitioner].function 1.. MS
// * performer[practitioner].function from $BROcupacao-1.0 (required)
// * performer[practitioner].function ^short = "Ocupação do Profissional"
// * performer[practitioner].function ^definition = "Atividade desempenhada pelo profissional que realizou o procedimento."
// * performer[practitioner].function ^binding.description = "Ocupação Profissional"
// * performer[practitioner].function.coding 1..1
// * performer[practitioner].function.coding.system 1..
// * performer[practitioner].function.coding.code 1..
// * performer[practitioner].function.coding.display ..0
// * performer[practitioner].function.coding.userSelected ..0
// * performer[practitioner].function.text ..0
// * performer[practitioner].actor only Reference(BRLotacaoProfissional or BREstabelecimentoSaude or BRPessoaJuridicaProfissionalLiberal)
// * performer[practitioner].actor MS
// * performer[practitioner].actor ^short = "Profissional"
// * performer[practitioner].actor.reference ..0
// * performer[practitioner].actor.type ..0
// * performer[practitioner].actor.identifier 1..
// * performer[practitioner].actor.identifier.use ..0
// * performer[practitioner].actor.identifier.type ..0
// * performer[practitioner].actor.identifier.system 1..
// * performer[practitioner].actor.identifier.value 1..
// * performer[practitioner].actor.identifier.period ..0
// * performer[practitioner].actor.identifier.assigner ..0
// * performer[practitioner].actor.display ..0
// * performer[practitioner].onBehalfOf only Reference(BREstabelecimentoSaude or BRPessoaJuridicaProfissionalLiberal)
// * performer[practitioner].onBehalfOf MS
// * performer[practitioner].onBehalfOf ^short = "Estabelecimento de Saúde Terceiro"
// * performer[practitioner].onBehalfOf ^definition = "Estabelecimento de Saúde que realizou o procedimento como serviço terceiro do Estabelecimento de Saúde onde o procediemento foi realizado."
// * performer[practitioner].onBehalfOf.reference ..0
// * performer[practitioner].onBehalfOf.type ..0
// * performer[practitioner].onBehalfOf.identifier 1..
// * performer[practitioner].onBehalfOf.identifier.use ..0
// * performer[practitioner].onBehalfOf.identifier.type ..0
// * performer[practitioner].onBehalfOf.identifier.system 1..
// * performer[practitioner].onBehalfOf.identifier.value 1..
// * performer[practitioner].onBehalfOf.identifier.period ..0
// * performer[practitioner].onBehalfOf.identifier.assigner ..0
// * performer[practitioner].onBehalfOf.display ..0
* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite ..0
* outcome ..0
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* note MS
* note ^short = "Resultado ou observações do procedimento"
* note ^definition = "Possibilita realizar anotações acerca do desfecho e observações do procedimento."
* note.author[x] ..0
* note.time ..0
* note.text MS
* focalDevice ..0
* usedReference ..0
* usedCode ..0