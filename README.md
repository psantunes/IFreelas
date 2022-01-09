# IFreelas

O IFreelas é uma plataforma web pensada para conectar os estudantes dos cursos de
TI do Instituto Federal do Rio Grande do Sul - Campus Porto Alegre (IFRS Porto Alegre) com empresas que estejam buscando profissionais para atuar como freelancer. 

O objetivo do site é criar um canal onde os estudantes dos cursos possam descrever
suas habilidades e se oferecer para serviços temporários. E onde empresas ou pessoas físicas, mediante cadastro, possam localizar e contatar estes profissionais. O site é um facilitador de relações de trabalho, não atuando como um agente de integração entre estudantes e empresas, mas precisa oferecer um ambiente seguro de comunicação, de forma a proteger a privacidade dos usuários. 

### Configuração mínima

A aplicação foi desenvolvida na linguagem Ruby on Rails.

Para rodar o IFReelas é necessária a seguinte configuração:

* Ruby: 3.0.3
* Rails: 6.1.4
* Node: 14.17 ou superior
* Yarn: 1.22.5
* Bundler: 2.2.32
* PostgreSQL: 11

No primeiro acesso, é necesário usar o comando 'rails db:prepare' para criar as bases de dados, subir as tabelas e dar a primeira carga de dados.
### Configuração de e-mail

Para funcionar em produção, será preciso configurar um conta do Gmail para envio e recebimento dos e-mails transacionais (confirmação de e-mail, troca de senha).
Os campos necessários, que devem ser inseridos num arquivo .ENV, são:

SMTP_FROM=

SMTP_USERNAME=

SMTP_PASSWORD=

Em ambiente local, o sistema usamos a gem letter_opener para testar o envio e recebimento de e-mails.
### Back-office

Para gestão do banco foi escolhida a gem ActiveAdmin. Ela pode ser acessada localmente em:

http://localhost:3000/admin/

O usuário pré-configurado se chama "admin@admin.com" e a senha "qwerty"
### Quem Somos

A plataforma foi concebida ao longo de diversas disciplinas do curso de Tecnologia em Sistemas para Internet do IFRS Porto Alegre.

A concepção ocorreu no primeiro semestre de 2019, na disciplina de Construção
de Páginas Web I, sob supervisão do professor Evandro Miletto, onde ganhou seu primeiro layout (disponível em <https://github.com/psantunes/IFreelas---layout>), e teve uma
versão preliminar de sua base de dados desenhada na disciplina de Banco de Dados I,
sob supervisão da professora Tanisi Pereira de Carvalho.

Na disciplina de Engenharia de Software I, sob orientação da professora Márcia Häfele Islabão Franco, o levantamento de requisitos e funcionalidades se limitou a descrever
apenas a interface do usuário da operação (com operações de login, atualização cadastral e consulta). Uma especificação mais detalhada, incluindo o funcionamento de funções administrativas, foi feita na disciplina de Engenharia de Software II.

Esta aplicação foi desenvolvida no segundo semestre de 2022, na disciplina de Engenharia de Software III e prevê o reuso de software para ganhar tempo de desenvolvimento. Além do aproveitamento de parte do layout e da modelagem do banco de dados, foram usadas diversas bibliotecas do Rails para acelerar a entrega, como uma ferramenta de back-office (ActiveAdmin), a gestão de acesso de login e senha (Devise) e template de front-end Digital Trend, da TemplateMO (disponível em <https://templatemo.com/tm-538-digital-trend>).

A aplicação foi inteiramente desenvolvida por Antonio Paulo Serpa Antunes. Ao longo de todo o ciclo de desenvolvimento deste projeto participaram do projeto os seguintes estudantes: Jefferson Ribeiro, Marcos Vinicios Dornelles e Alexandre de Mesquita Fabian.

**Plano de Testes**: em paralelo ao desenvolvimento do IFreelas, foi feita para a disciplina de Validação e Verificação de Sistemas, sob supervisão do professor [Rodrigo Prestes Machado](https://github.com/rodrigoprestesmachado/), a definição de um plano de testes para colocar a aplicação no ar. 

Foi definido que seriam implantados:
1. Inspeções estáticas, removendo todos os erros graves apontados pela ferramenta
2. Testes unitários, inicialmente testando Models
3. Teste de interface
4. Implantação de um plano de integração contínua

Em janeiro de 2022 foi concluída a primeira fase do projeto:

1. Inspeções estáticas com Rubocop: reduzido o número de erros de 285 para 65
2. Testes unitários: criado teste para validar a criação de Profissionais e Cliente
3. Teste de interface: criar teste para validar a primeira fase do cadastro de Profissionais e Cliente
4. Implantação de um plano de integração contínua, incluindo deploy automático da aplicação para o Heroku

Ficam faltando para as próximas versões da aplicação:

1. Testes unitário para validar o cadastro completo de Profissionais e Clientes; testes na Busca, para verificar se a query está buscando profissionais por suas habilidades, descrições e experiências. 
2. Testes unitários nas controllers
3. Testes de interface para validar login e o preenchimento do cadastro completo.