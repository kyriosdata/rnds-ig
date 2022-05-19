# Tarefas

- Corrigir erros gerados pelo acréscimo de RPM e RDM.

# Guia de Implementação

Uso de FSH para gerar guia de implementação
para os perfis FHIR produzidos pela RNDS.

# Resultado

- https://kyriosdata.github.io/rnds-ig

# Importante

Este não é um repositório oficial da RNDS. É um
trabalho isolado. Nenhuma garantia é fornecida.

# Uso

- `_updatePublisher`
- `_genonce`

# Conversão de XML para JSON

- Via linha de comandos usando Firely Terminal
  - `fhir push arquivo.xml`
  - `fhir save --json`
- Todo o conteúdo de um diretório
  - `for %f in (*.xml) do fhir push %f & fhir save %~nf.json` 
- Via browser
  - https://fhir-formats.github.io/  
- De IG (xml) para FSH:
  - `gofsh . -o output` (converte todos os arquivos .json no diretório corrente para fsh no diretório output) 
