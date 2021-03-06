Profile: BRIndividuo
Parent: Patient
Id: 7ba7dc20-9251-417f-bc02-0a08c2986710
Title: "Indivíduo"
Description: "Indíviduo, sujeito da assistência à saúde."
* ^meta.lastUpdated = "2020-03-13T19:47:50.646+00:00"
* ^language = #pt-BR
* ^url = "http://www.saude.gov.br/fhir/r4/StructureDefinition/BRIndividuo-1.0"
* ^version = "1.0"
* ^date = "2020-03-13T19:48:14.539093+00:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^purpose = "O indivíudo é o sujeito central para os processos informativos de dados em saúde. Não deve ser utilizado quando na condição de profissional."
* . MS
* . ^short = "Indivíduo"
* . ^definition = "Dados demográficos sobre um indivíduo enquanto sujeito de ações e serviços de saúde."
* . ^alias[0] = "Paciente"
* . ^alias[+] = "Cidadão"
* . ^alias[+] = "Pessoa"
* . ^alias[+] = "Usuário"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    BRQualidadeCadastroIndividuo named registerQuality 0..* MS and
    BRParentesIndividuo named parents 0..* MS and
    BRRacaCorEtnia named raceEthnicity 0..* MS and
    BRMunicipio named birthCity 0..1 MS and
    BRPais named nacionality 1..1 MS and
    BRIndividuoProtegido named protectedPerson 0..1 MS and
    BRNaturalizacao named naturalization 0..1 MS and
    BRIndividuoNaoIdentificado named unidentifiedPatient 0..1
* extension[registerQuality] ^definition = "Grau de completude do cadastro do indivíduo, escore de 0 a 100."
* extension[registerQuality] ^min = 0
* extension[registerQuality].value[x] ^mustSupport = false
* extension[parents] ^min = 0
* extension[parents].extension 2..
* extension[parents].extension ^slicing.discriminator.type = #value
* extension[parents].extension ^slicing.discriminator.path = "url"
* extension[parents].extension ^slicing.rules = #open
* extension[parents].extension[relationship] ^sliceName = "relationship"
* extension[parents].extension[relationship] ^mustSupport = true
* extension[parents].extension[parent] ^sliceName = "parent"
* extension[parents].extension[parent] ^mustSupport = true
* extension[raceEthnicity] ^min = 0
* extension[raceEthnicity].extension 1..
* extension[raceEthnicity].extension ^slicing.discriminator.type = #value
* extension[raceEthnicity].extension ^slicing.discriminator.path = "url"
* extension[raceEthnicity].extension ^slicing.rules = #open
* extension[raceEthnicity].extension[race] ^sliceName = "race"
* extension[raceEthnicity].extension[race] ^mustSupport = true
* extension[raceEthnicity].extension[indigenousEthnicity] ^sliceName = "indigenousEthnicity"
* extension[raceEthnicity].extension[indigenousEthnicity] ^min = 0
* extension[raceEthnicity].extension[indigenousEthnicity] ^mustSupport = true
* extension[birthCity] ^short = "Município de Nascimento"
* extension[birthCity] ^definition = "Município onde o indivíduo nasceu."
* extension[nacionality] ^short = "Nacionalidade"
* extension[nacionality] ^definition = "Nacionalidade do indivíduo."
* extension[protectedPerson] ^short = "Indivíduo com Dados Protegidos"
* extension[protectedPerson] ^definition = "Indivíduo com maior restrição à disponibilização de seus dados, por possuir grande exposição pública (ex.: político, esportista, artista famoso etc.), estar em programa de proteção à testemunha, o objeto de seu trabalho colocá-lo em risco (investigadores da inteligência, p.ex.), dentre outros."
* extension[protectedPerson] ^alias[0] = "VIP"
* extension[unidentifiedPatient] ^min = 0
* identifier only BRDocumentoIndividuo
* active 1.. MS
* active ^short = "Registro em Uso"
* active ^definition = "Indica se o registro desse indivíduo ainda está em uso.\r\nA codição de inativo pode indicar que tanto uma informação errada quanto um indivíduo falecido, e indivíduos falecidos podem permanecer ativos por algum tempo após o falecimento para fins de registro da informação.\r\nLogo, esta não deve ser opção para identificar um indivíduo falecido, sendo mais adequado o elemento deceased."
* active ^comment = "Valor padrão é true."
* active ^requirements = "Identificar registros que não estão mais em uso."
* active ^isModifierReason = "Indica que o registro não deve mais se tratado como válido."
* name only BRNomeIndividuo
* telecom only BRMeioContato
* gender 1.. MS
* gender from $BRSexo-1.0 (required)
* gender ^short = "Sexo"
* gender ^definition = "male: masculino.\r\nfemale: feminino.\r\nunknown: ignorado."
* gender ^binding.description = "Sexo"
* birthDate 1.. MS
* birthDate ^short = "Data de Nascimento"
* birthDate ^definition = "Data de nascimento do indivíduo"
* deceased[x] MS
* deceased[x] ^short = "Óbito"
* deceased[x] ^definition = "Indica se o indivíduo foi a óbito. O óbito pode ser interpretado pelo booleano = true ou pela existência de uma data/hora."
* address only BREndereco
* address ^definition = "Dados do(s) endereço(s) onde o indivíduo pode ser localizado."
* address.use 1..
* address.type 1..
* address.line[streetType] ^sliceName = "streetType"
* maritalStatus ..0 MS
* maritalStatus ^short = "Estado Civil"
* maritalStatus ^definition = "Complexo das qualidades do indivíudo referentes à ordem pública, à ordem privada e à ordem física do ser humano. Refere-se, assim, à cidadania, à família, e à capacidade civil.\r\nMIRABETE, Julio Fabbrini. Código de processo penal interpretado.11. ed. 6. tir. São Paulo: Atlas, 2003."
* maritalStatus.coding 1..1
* maritalStatus.coding.system 1..
* maritalStatus.coding.code 1..
* maritalStatus.coding.display ..0
* maritalStatus.coding.userSelected ..0
* maritalStatus.text ..0
* multipleBirth[x] ..0
* multipleBirth[x] ^short = "Indivíduo Nasceu em Parto Gemelar"
* multipleBirth[x] ^definition = "Indica se o indivíduo é parte de um parto múltiplo (gemelar) de forma booleana (true = sim) ou pela ordem de nascimento (inteiro)."
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization ..0
* link ..0