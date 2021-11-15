Profile: BRConjuntoMinimoDados
Parent: Composition
Id: e95fd8e8-3e10-4824-8227-99576192fb81
Title: "Conjunto Mínimo de Dados"
Description: "Documento público que coleta os dados dos atendimentos em saúde realizados em qualquer estabelecimento de saúde do país, público ou privado, em cada contato assistencial"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2020-06-09T14:32:06.556+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRConjuntoMinimoDados-1.0"
* ^version = "1.0"
* ^status = #active
* ^date = "2020-06-09T14:32:31.8956584Z"
* ^publisher = "Ministério da Saúde do Brasil"
* . MS
* . ^short = "Conjunto Mínimo de Dados"
* . ^definition = "Documento que representa o Conjunto Mínimo de Dados."
* . ^alias[0] = "Contato Assistencial"
* . ^alias[+] = "CMD"
* . ^alias[+] = "Minimum Health Data Set"
* . ^alias[+] = "Minimum Basic Health Data Set"
* . ^alias[+] = "MHDS"
* . ^alias[+] = "MBHDS"
* . ^alias[+] = "Atendimento"
* . ^alias[+] = "Internação"
* identifier ..0
* status MS
* status from $BREstadoDocumento-1.0 (required)
* status ^short = "final | entered-in-error"
* status ^binding.description = "Estado do Documento"
* type MS
* type from $BRTipoDocumento-1.0 (required)
* type ^short = "Tipo de Documento"
* type ^definition = "Especifica o tipo de documento que está sendo enviado na composição."
* type ^binding.description = "Tipo de Documento"
* type.coding 1..1 MS
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* category 1..1 MS
* category from $BRModalidadeAssistencial-1.0 (required)
* category ^short = "Modalidade Assistencial"
* category ^definition = "Classifica os contatos assistenciais de acordo com as especificidades do modo, local e duração do atendimento.\r\nReferência: https://rts.saude.gov.br/#/modalidade-assistencial"
* category ^binding.description = "Modalidade Assistencial"
* category.coding 1..1 MS
* category.coding.system 1..
* category.coding.code 1..
* category.coding.display ..0
* category.coding.userSelected ..0
* category.text ..0
* subject 1.. MS
* subject only Reference(BRIndividuo)
* subject ^short = "Sujeito da Composição"
* subject ^definition = "Quem ou o quê a composição se refere. Pode ser um indivíduo, dispositivo, grupos (de indivíduos, dispositivos etc.)."
* subject ^comment = "Nesta versão, a RNDS suportará somente indivíduos."
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
* encounter ..0
* date MS
* date ^short = "Data/hora de Geração do Documento"
* date ^definition = "Data e hora em que o documento foi gerado."
* author only Reference(BRPessoaJuridicaProfissionalLiberal)
* author MS
* author ^short = "Reponsável pelo Contato Assistencial"
* author ^definition = "Identifica a Pessoa Jurídica ou Pessoa Física (profissional liberal) responsável por gerar o documento."
* author ^comment = "Nesta versão da RNDS somente serão suportadas edições provenientes de Estabelecimentos de Saúde."
* author.reference ..0
* author.type ..0
* author.identifier 1..
* author.identifier.use ..0
* author.identifier.type ..0
* author.identifier.system 1..
* author.identifier.value 1..
* author.identifier.period ..0
* author.identifier.assigner ..0
* author.display ..0
* title MS
* title ^short = "Título do documento"
* title ^definition = "Título do documento em linguagem humana."
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event ..0
* section 1.. MS
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "entry.resolve()"
* section ^slicing.rules = #open
* section ^short = "Seções do documento"
* section ^definition = "Referencia todas as seções (profiles/resources) contidos neste documento."
* section contains
    informacoesContatoAssistencial 1..1 MS and
    diagnosticosAvaliados 0..* MS and
    problemasAvaliados 0..* MS and
    procedimentosRealizados 1..* MS
* section[informacoesContatoAssistencial] ^short = "Informações do Contato Assistencial"
* section[informacoesContatoAssistencial].title ..0
* section[informacoesContatoAssistencial].code ..0
* section[informacoesContatoAssistencial].author ..0
* section[informacoesContatoAssistencial].focus ..0
* section[informacoesContatoAssistencial].text ..0
* section[informacoesContatoAssistencial].mode ..0
* section[informacoesContatoAssistencial].orderedBy ..0
* section[informacoesContatoAssistencial].entry 1..1 MS
* section[informacoesContatoAssistencial].entry only Reference(BRContatoAssistencial)
* section[informacoesContatoAssistencial].entry.reference 1..
* section[informacoesContatoAssistencial].entry.type ..0
* section[informacoesContatoAssistencial].entry.identifier ..0
* section[informacoesContatoAssistencial].entry.display ..0
* section[informacoesContatoAssistencial].emptyReason ..0
* section[informacoesContatoAssistencial].section ..0
* section[diagnosticosAvaliados] ^short = "Problema(s)/Diagnóstico(s) Avaliado(s)"
* section[diagnosticosAvaliados].title ..0
* section[diagnosticosAvaliados].code ..0
* section[diagnosticosAvaliados].author ..0
* section[diagnosticosAvaliados].focus ..0
* section[diagnosticosAvaliados].text ..0
* section[diagnosticosAvaliados].mode ..0
* section[diagnosticosAvaliados].orderedBy ..0
* section[diagnosticosAvaliados].entry ..1 MS
* section[diagnosticosAvaliados].entry only Reference(BRCID10Avaliado)
* section[diagnosticosAvaliados].entry.reference 1.. MS
* section[diagnosticosAvaliados].entry.type ..0
* section[diagnosticosAvaliados].entry.identifier ..0
* section[diagnosticosAvaliados].entry.display ..0
* section[diagnosticosAvaliados].emptyReason MS
* section[diagnosticosAvaliados].emptyReason from $BRMotivoInformacaoAusente-1.0 (required)
* section[diagnosticosAvaliados].emptyReason ^short = "Motivo da Seção Vazia"
* section[diagnosticosAvaliados].emptyReason ^binding.description = "Motivo da Seção Vazia"
* section[diagnosticosAvaliados].emptyReason.coding 1..1
* section[diagnosticosAvaliados].emptyReason.coding.system 1..
* section[diagnosticosAvaliados].emptyReason.coding.code 1..
* section[diagnosticosAvaliados].emptyReason.coding.display ..0
* section[diagnosticosAvaliados].emptyReason.coding.userSelected ..0
* section[diagnosticosAvaliados].emptyReason.text ..0
* section[diagnosticosAvaliados].section ..0
* section[problemasAvaliados] ^short = "Problema(s)/Diagnóstico(s) Avaliado(s)"
* section[problemasAvaliados].title ..0
* section[problemasAvaliados].code ..0
* section[problemasAvaliados].author ..0
* section[problemasAvaliados].focus ..0
* section[problemasAvaliados].text ..0
* section[problemasAvaliados].mode ..0
* section[problemasAvaliados].orderedBy ..0
* section[problemasAvaliados].entry ..1 MS
* section[problemasAvaliados].entry only Reference(BRCIAP2Avaliado)
* section[problemasAvaliados].entry.reference 1.. MS
* section[problemasAvaliados].entry.type ..0
* section[problemasAvaliados].entry.identifier ..0
* section[problemasAvaliados].entry.display ..0
* section[problemasAvaliados].emptyReason MS
* section[problemasAvaliados].emptyReason from $BRMotivoInformacaoAusente-1.0 (required)
* section[problemasAvaliados].emptyReason ^short = "Motivo da Seção Vazia"
* section[problemasAvaliados].emptyReason ^binding.description = "Motivo da Seção Vazia"
* section[problemasAvaliados].emptyReason.coding 1..1
* section[problemasAvaliados].emptyReason.coding.system 1..
* section[problemasAvaliados].emptyReason.coding.code 1..
* section[problemasAvaliados].emptyReason.coding.display ..0
* section[problemasAvaliados].emptyReason.coding.userSelected ..0
* section[problemasAvaliados].emptyReason.text ..0
* section[problemasAvaliados].section ..0
* section[procedimentosRealizados] ^short = "Procedimento(s) Realizado(s)"
* section[procedimentosRealizados].title ..0
* section[procedimentosRealizados].code ..0
* section[procedimentosRealizados].author ..0
* section[procedimentosRealizados].focus ..0
* section[procedimentosRealizados].text ..0
* section[procedimentosRealizados].mode ..0
* section[procedimentosRealizados].orderedBy ..0
* section[procedimentosRealizados].entry 1..1 MS
* section[procedimentosRealizados].entry only Reference(BRProcedimentoRealizado)
* section[procedimentosRealizados].entry.reference 1..
* section[procedimentosRealizados].entry.type ..0
* section[procedimentosRealizados].entry.identifier ..0
* section[procedimentosRealizados].entry.display ..0
* section[procedimentosRealizados].emptyReason ..0
* section[procedimentosRealizados].section ..0