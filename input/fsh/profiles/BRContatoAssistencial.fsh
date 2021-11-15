Profile: BRContatoAssistencial
Parent: Encounter
Id: 9e02be1a-ccd7-41d3-a10e-2c031a4979b4
Title: "Contato Assistencial"
Description: """Resumo ou sumário referente a um atendimento ininterrupto dispensado a um indivíduo em uma mesma modalidade assistencial e em um mesmo estabelecimento de saúde, gerado após a conclusão deste atendimento.
Referência: <a href="https://wiki.saude.gov.br/cmd/index.php/Página_principal#Contato_Assistencial">https://wiki.saude.gov.br/cmd/index.php/Página_principal#Contato_Assistencial</a>"""
* ^meta.lastUpdated = "2020-04-29T19:58:11.64+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRContatoAssistencial-1.0"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-29T19:58:09.2865128+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "Reportar para o Sistema Único de Saúde dados mínimos referentes a um atendimento concluído, de forma a possibilitar seu compartilhamento entre profissionais de saúde, o próprio indivíduo que recebeu o atendimento, assim como possibilitar o uso secundário das informações para atividades faturamento, auditoria, formulação e monitoramento de políticas públicas, por exemplo, nas esferas municipal, estadual e federal."
* . MS
* . ^short = "Contato Assistencial"
* . ^definition = "Atenção à saúde dispensada a um indivíduo em uma modalidade assistencial, de forma ininterrupta e em um mesmo estabelecimento de saúde."
* . ^alias[0] = "Atendimento"
* . ^alias[+] = "Visita"
* . ^alias[+] = "Internação"
* . ^alias[+] = "Consulta"
* . ^alias[+] = "Atendimento Ambulatorial"
* identifier ..0
* status MS N
* status from $BREstadoContatoAssistencial-1.0 (required)
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* status ^short = "finished | entered-in-error"
* status ^definition = "Indica o estado que o contato assistencial se encontra quando é informado para a RNDS."
* status ^comment = "Na RNDS os contatos assistenciais somente são informados após terem sido finalizados, portanto somente a opção finished pode ser utilizada, ou entered-in-error, quando o contato assistencial foi enviado com erro."
* status ^binding.description = "Estado do Contato Assistencial"
* statusHistory ..0
* class MS
* class from $BRModalidadeAssistencial-1.0 (required)
* class ^label = "Modalidade Assistencial"
* class ^short = "Modalidade Assistencial"
* class ^definition = "Classifica os contatos assistenciais de acordo com as especificidades do modo, local e duração do atendimento.\r\nReferência: https://rts.saude.gov.br/#/modalidade-assistencial"
* class ^binding.description = "Modalidade Assistencial"
* class.system 1..
* class.code 1..
* class.display ..0
* class.userSelected ..0
* classHistory ..0
* type ..0
* serviceType ..0
* priority 1.. MS
* priority from $BRCaraterAtendimento-1.0 (required)
* priority ^label = "Caráter do Atendimento"
* priority ^short = "Caráter do Atendimento"
* priority ^definition = "Identifica o contato assistencial de acordo com a prioridade de sua realização.\r\nReferência: https://rts.saude.gov.br/#/carater-atendimento"
* priority ^alias[0] = "Caráter de Atendimento"
* priority ^alias[+] = "Caráter da Internação"
* priority ^binding.description = "Identifica o contato assistencial de acordo com a prioridade de sua realização."
* priority.coding 1..1
* priority.coding.system 1..
* priority.coding.code 1..
* priority.coding.display ..0
* priority.coding.userSelected ..0
* priority.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^comment = "Na primeira versão não será suportado a identificação de grupos."
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
* subject.type = "Patient" (exactly)
* subject.identifier.use ..0
* subject.identifier.type ..0
* subject.identifier.system 1..
* subject.identifier.value 1..
* subject.identifier.period ..0
* subject.identifier.assigner ..0
* subject.display ..0
* subject.display ^short = "Nome ou descrição do sujeito"
* subject.display ^definition = "Nome do indivíduo ou descrição do sujeito do Contato Assistencial quando não for um indivíduo."
* episodeOfCare ..0
* basedOn ..0
* participant MS
* participant ^short = "Participante(s) do Contato Assistencial"
* participant ^definition = "Identifica o(s) profissional(is) ou indivíduo(s) que teve(tiveram) algum tipo de participação no Contato Assistencial."
* participant ^alias[0] = "Profissionais do Atendimento"
* participant ^alias[+] = "Profissional Responsável pela Alta"
* participant.extension ^slicing.discriminator.type = #value
* participant.extension ^slicing.discriminator.path = "url"
* participant.extension ^slicing.rules = #open
* participant.extension contains
    BROcupacao named function 1..1 MS and
    BRIdentificacaoEquipe named team 0..1 MS
* participant.extension[function] ^definition = "Ocupação do profissional ou indivíduo que participou do contato assistencial."
* participant.extension[team] ^short = "Equipe"
* participant.extension[team] ^definition = "Identifica a equipe de saúde responsável pelo Contato Assistencial utilizando o Identificador Nacional de Equipes."
* participant.type 1..1 MS
* participant.type from $BRResponsabilidadeParticipante-1.0 (required)
* participant.type ^short = "Tipo de Participação"
* participant.type ^definition = "Responsabilidade que o profissional ou indivíduo teve durante o Contato Assistencial."
* participant.type ^binding.description = "Responsabilidade no Contato Assistencial"
* participant.type.coding.system 1..
* participant.type.coding.code 1..
* participant.type.coding.display ..0
* participant.type.coding.userSelected ..0
* participant.type.text ..0
* participant.period ..0
* participant.individual 1.. MS
* participant.individual only Reference(BRLotacaoProfissional)
* participant.individual ^short = "Participante"
* participant.individual ^definition = "Identifica o profissional ou indivíduo teve alguma participação no Contato Assistencial."
* participant.individual.reference ..0
* participant.individual.type ..0
* participant.individual.identifier 1..
* participant.individual.identifier.use ..0
* participant.individual.identifier.type ..0
* participant.individual.identifier.system 1..
* participant.individual.identifier.value 1..
* participant.individual.identifier.period ..0
* participant.individual.identifier.assigner ..0
* participant.individual.display ..0
* appointment ..0
* period 1.. MS
* period ^short = "Início e Término do Contato Assistencial"
* period ^definition = "Data ou data/hora de adminissão e desfecho do Contato Assistencial."
* period.start 1.. MS
* period.start ^short = "Momento da Admissão"
* period.start ^definition = "Competência (mês/ano), data ou data e hora do início do Contato Assistencial."
* period.start ^alias[0] = "Data da Admissão"
* period.start ^alias[+] = "Data e Hora do Atendimento"
* period.start ^alias[+] = "Data e Hora da Admissão"
* period.end 1.. MS
* period.end ^short = "Momento do Desfecho"
* period.end ^definition = "Competência (mês/ano), data ou data e hora do término do Contato Assistencial."
* period.end ^alias[0] = "Data do Desfecho"
* period.end ^alias[+] = "Data e Hora da Saída da Internação"
* length ..0
* reasonCode ..0
* reasonReference only Reference(BRCID10Avaliado or BRCIAP2Avaliado or BRObservacaoDescritiva)
* reasonReference MS
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^short = "Motivo do Atendimento"
* reasonReference ^definition = "Motivação para o Contato Assistencial acontecer."
* reasonReference ^alias[0] = "Motivo do Contato Assistencial"
* reasonReference ^alias[+] = "Diangóstico Principal"
* reasonReference ^alias[+] = "Motivo da Admissão"
* reasonReference contains
    primaryDiagnosis 0..1 MS and
    reasonCoded 0..* MS and
    reasonText 0..1 MS
* reasonReference[primaryDiagnosis] only Reference(BRCID10Avaliado)
* reasonReference[primaryDiagnosis] ^short = "Diagnóstico Principal"
* reasonReference[primaryDiagnosis] ^definition = "Condição estabelecida após estudo de forma a esclarecer qual o mais importante ou principal motivo responsável pela demanda do contato assistencial. O diagnóstico principal reflete achados clínicos descobertos durante a permanência do indivíduo no estabelecimento de saúde, podendo portanto ser diferente do diagnóstico de admissão. (Port. nº 1.324/SAS/MS/2014)."
* reasonReference[primaryDiagnosis].extension ^slicing.discriminator.type = #value
* reasonReference[primaryDiagnosis].extension ^slicing.discriminator.path = "url"
* reasonReference[primaryDiagnosis].extension ^slicing.rules = #open
* reasonReference[primaryDiagnosis].extension ^min = 0
* reasonReference[primaryDiagnosis].extension contains
    BRIndicadorPresencaAdmissao named admissionStatus 0..1
* reasonReference[primaryDiagnosis].extension[admissionStatus] only BRIndicadorPresencaAdmissao
* reasonReference[primaryDiagnosis].extension[admissionStatus] ^sliceName = "admissionStatus"
* reasonReference[primaryDiagnosis].extension[admissionStatus] ^definition = "Identifica se o problema/diagnóstico era previamente conhecido na admissão do indivíduo para o contato assistencial.\r\nUtilize true para Sim, false para Não e null para Desconhecido."
* reasonReference[primaryDiagnosis].extension[admissionStatus] ^min = 0
* reasonReference[primaryDiagnosis].extension[admissionStatus] ^mustSupport = true
* reasonReference[primaryDiagnosis].reference 1..
* reasonReference[primaryDiagnosis].type ..0
* reasonReference[primaryDiagnosis].identifier ..0
* reasonReference[primaryDiagnosis].display ..0
* reasonReference[reasonCoded] only Reference(BRCIAP2Avaliado)
* reasonReference[reasonCoded] ^short = "Motivo do Atendimento Estruturado"
* reasonReference[reasonCoded] ^definition = "Motivo do Contato Assistencial ter acontecido."
* reasonReference[reasonCoded] ^alias[0] = "Motivo do Atendimento"
* reasonReference[reasonCoded].reference 1..
* reasonReference[reasonCoded].type ..0
* reasonReference[reasonCoded].identifier ..0
* reasonReference[reasonCoded].display ..0
* reasonReference[reasonText] only Reference(BRObservacaoDescritiva)
* reasonReference[reasonText] ^short = "Declaração Subjetiva do Motivo do Atendimento"
* reasonReference[reasonText] ^definition = "Declaração subjetiva do indivíduo para indicar a razão do Contato Assistencial."
* reasonReference[reasonText] ^alias[0] = "Declaração Subjetiva do Indivíudo para o Atendimento"
* reasonReference[reasonText].reference 1..
* reasonReference[reasonText].type ..0
* reasonReference[reasonText].identifier ..0
* reasonReference[reasonText].display ..0
* diagnosis ^slicing.discriminator.type = #profile
* diagnosis ^slicing.discriminator.path = "condition.resolve()"
* diagnosis ^slicing.rules = #open
* diagnosis ^short = "Diagnósticos Secundários, Outros Problemas e Procedimentos"
* diagnosis ^definition = "Referência a diagnóstico(s) secundário(s) avaliado(s), outro(s) problema(s) avaliado(s) e/ou procedimento(s) realizado(s) durante o contato assistencial."
* diagnosis ^alias[0] = "Diagnóstico Secundário"
* diagnosis ^alias[+] = "Lista de Problemas"
* diagnosis ^alias[+] = "Problema Avaliado"
* diagnosis ^alias[+] = "Diagnóstico Avaliado"
* diagnosis ^alias[+] = "Procedimento Executado"
* diagnosis ^alias[+] = "Procedimento Realizado"
* diagnosis contains
    diagnosis 0..* MS and
    problem 0..* MS and
    procedure 1..* MS
* diagnosis[diagnosis] ^short = "Diagnóstico(s) Avaliado(s)"
* diagnosis[diagnosis] ^definition = "Informações sobre a condição de saúde, lesão, deficiência ou qualquer outra questão que afete o bem-estar físico, mental ou social de um indivíduo identificadas em um contato assistencial. (adaptado do conceito de Problema/Diagnóstico do Clinical Knowledge Manager/OpenEHR)\r\nDevem ser listados diangnósticos avaliados durante um contato assistencial ou serem listados os diangósticos secundários caso o reasonReference:primaryDiagnosis seja informado; o diagnóstico informado no reasonReference não deve ser repetido neste elemento.\r\nDiagnóstico secundário é(são) a(s) condição(ões) que coexiste(m) no momento da admissão, que se desenvolve(m) durante o contato assistencial ou que afeta(m) a atenção recebida e/ou a duração do contato assistencial. (adaptado do conceito disposto no Art. 3º da Portaria SAS/MS nº 1.324, de 27 de novembro de 2014)"
* diagnosis[diagnosis] ^alias[0] = "Diagnóstico Secundário"
* diagnosis[diagnosis].condition only Reference(BRCID10Avaliado)
* diagnosis[diagnosis].condition MS
* diagnosis[diagnosis].condition.extension ^slicing.discriminator.type = #value
* diagnosis[diagnosis].condition.extension ^slicing.discriminator.path = "url"
* diagnosis[diagnosis].condition.extension ^slicing.rules = #open
* diagnosis[diagnosis].condition.extension ^min = 0
* diagnosis[diagnosis].condition.extension contains
    BRIndicadorPresencaAdmissao named admissionStatus 0..1
* diagnosis[diagnosis].condition.extension[admissionStatus] only BRIndicadorPresencaAdmissao
* diagnosis[diagnosis].condition.extension[admissionStatus] ^sliceName = "admissionStatus"
* diagnosis[diagnosis].condition.extension[admissionStatus] ^definition = "Identifica se o problema/diagnóstico era previamente conhecido na admissão do indivíduo para o contato assistencial.\r\nUtilize true para Sim, false para Não e null para Desconhecido."
* diagnosis[diagnosis].condition.extension[admissionStatus] ^min = 0
* diagnosis[diagnosis].condition.extension[admissionStatus] ^mustSupport = true
* diagnosis[diagnosis].condition.reference 1..
* diagnosis[diagnosis].condition.type ..0
* diagnosis[diagnosis].condition.identifier ..0
* diagnosis[diagnosis].condition.display ..0
* diagnosis[diagnosis].use ..0
* diagnosis[diagnosis].rank ..0 N
* diagnosis[diagnosis].rank ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* diagnosis[diagnosis].rank ^extension[=].valueCode = #4.0.0
* diagnosis[problem] ^short = "Problema(s) Avaliado(s)"
* diagnosis[problem] ^definition = "Informações sobre a condição de saúde, lesão, deficiência ou qualquer outra questão que afete o bem-estar físico, mental ou social de um indivíduo identificadas em um contato assistencial. (adaptado do conceito de Problema/Diagnóstico do Clinical Knowledge Manager/OpenEHR)\r\nO(s) problema(s) informado(s) no reasonReference:reasonCodede não deve(m) ser repetido(s) neste elemento."
* diagnosis[problem] ^alias[0] = "Lista de Problemas"
* diagnosis[problem].condition only Reference(BRCIAP2Avaliado)
* diagnosis[problem].condition MS
* diagnosis[problem].condition.reference 1..
* diagnosis[problem].condition.type ..0
* diagnosis[problem].condition.identifier ..0
* diagnosis[problem].condition.display ..0
* diagnosis[problem].use ..0
* diagnosis[problem].rank ..0 N
* diagnosis[problem].rank ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* diagnosis[problem].rank ^extension[=].valueCode = #4.0.0
* diagnosis[procedure] ^short = "Procedimento(s) Realizado(s)"
* diagnosis[procedure] ^definition = "Ação(ões) e/ou serviço(s) de saúde realizado(s) no/para o indivíduo."
* diagnosis[procedure] ^alias[0] = "Procedimento Executado"
* diagnosis[procedure].condition only Reference(BRProcedimentoRealizado)
* diagnosis[procedure].condition MS
* diagnosis[procedure].condition.extension ^slicing.discriminator.type = #value
* diagnosis[procedure].condition.extension ^slicing.discriminator.path = "url"
* diagnosis[procedure].condition.extension ^slicing.rules = #open
* diagnosis[procedure].condition.extension contains BRFinanciamento named financier 1..1 MS
* diagnosis[procedure].condition.extension[financier] ^definition = "Agente, instituição ou entidade responsável por custear as ações e serviços de saúde."
* diagnosis[procedure].condition.reference 1..
* diagnosis[procedure].condition.type ..0
* diagnosis[procedure].condition.identifier ..0
* diagnosis[procedure].condition.display ..0
* diagnosis[procedure].use ..0
* diagnosis[procedure].rank ..0 N
* diagnosis[procedure].rank ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* diagnosis[procedure].rank ^extension[=].valueCode = #4.0.0
* account ..0
* hospitalization 1.. MS
* hospitalization.preAdmissionIdentifier ..0
* hospitalization.origin ..0
* hospitalization.admitSource 1.. MS
* hospitalization.admitSource from $BRProcedencia-1.0 (required)
* hospitalization.admitSource ^short = "Procedência"
* hospitalization.admitSource ^definition = "Identifica o serviço que encaminhou o indivíduo ou a sua iniciativa/de seu responsável na busca pelo acesso ao serviço de saúde."
* hospitalization.admitSource ^binding.description = "Procedência"
* hospitalization.admitSource.coding 1..1
* hospitalization.admitSource.coding.system 1..
* hospitalization.admitSource.coding.code 1..
* hospitalization.admitSource.coding.display ..0
* hospitalization.admitSource.coding.userSelected ..0
* hospitalization.admitSource.text ..0
* hospitalization.reAdmission ..0
* hospitalization.dietPreference ..0
* hospitalization.specialCourtesy ..0
* hospitalization.specialArrangement ..0
* hospitalization.destination ..0
* hospitalization.dischargeDisposition 1.. MS
* hospitalization.dischargeDisposition from $BRMotivoDesfecho-1.0 (required)
* hospitalization.dischargeDisposition ^short = "Motivo de Desfecho"
* hospitalization.dischargeDisposition ^definition = "Caracteriza o motivo de conclusão total ou parcial do Contato Assistencial."
* hospitalization.dischargeDisposition ^alias[0] = "Desfecho da Internação"
* hospitalization.dischargeDisposition ^binding.description = "Motivo do Desfecho"
* hospitalization.dischargeDisposition.coding 1..1
* hospitalization.dischargeDisposition.coding.system 1..
* hospitalization.dischargeDisposition.coding.code 1..
* hospitalization.dischargeDisposition.coding.display ..0
* hospitalization.dischargeDisposition.coding.userSelected ..0
* hospitalization.dischargeDisposition.text ..0
* location ..1 MS
* location ^short = "Local de Atendimento"
* location ^definition = "Local onde o atendimento aconteceu."
* location.location only Reference(BRLocalAtendimento)
* location.location MS
* location.location.reference 1..
* location.location.type ..0
* location.location.identifier ..0
* location.location.display ..0
* location.status ..0 N
* location.status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* location.status ^extension[=].valueCode = #4.0.0
* location.physicalType ..0
* location.period ..0
* serviceProvider 1.. MS
* serviceProvider only Reference(BREstabelecimentoSaude or BRPessoaJuridicaProfissionalLiberal)
* serviceProvider ^short = "Estabelecimento de Saúde do Contato Assistencial"
* serviceProvider ^definition = "Identifica pelo número de inscrição no Cadastro Nacional de Estabelecimentos de Saúde o Estabelecimento de Saúde que realizou o Contato Assistencial."
* serviceProvider.reference ..0
* serviceProvider.type ..0
* serviceProvider.identifier 1..
* serviceProvider.identifier.use ..0
* serviceProvider.identifier.type ..0
* serviceProvider.identifier.system 1..
* serviceProvider.identifier.value 1..
* serviceProvider.identifier.period ..0
* serviceProvider.identifier.assigner ..0
* serviceProvider.display ..0
* partOf only Reference(BRContatoAssistencial)
* partOf MS
* partOf ^short = "Contato Assistencial anterior"
* partOf ^definition = "Permite referenciar outro Contato Assistencial que tenha dado sequência a este, como por exemplo, um indivíduo realiza, em um mesmo Estabelecimento de Saúde, um Contato Assistencial que seja de Modalidade Assistencial Atenção à Urgência/Emergência, e necessite ser internado, dando continuidade em um Contato Assistencial de Atenção Hospitalar. Neste exemplo, este elemento seria utilizado no Contato Assistencial de Atenção Hospitalar, que faria referência ao Contato Assistencial de Atenção à Urgência/Emergência."
* partOf.reference 1..
* partOf.type ..0
* partOf.identifier ..0
* partOf.display ..0