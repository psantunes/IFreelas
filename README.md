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
de Páginas Web I, sob supervisão do professor Evandro Miletto, onde ganhou seu primeiro layout (disponível em https://github.com/psantunes/IFreelas---layout), e teve uma
versão preliminar de sua base de dados desenhada na disciplina de Banco de Dados I,
sob supervisão da professora Tanisi Pereira de Carvalho.

Na disciplina de Engenharia de Software I, sob orientação da professora Márcia Häfele Islabão Franco, o levantamento de requisitos e funcionalidades se limitou a descrever
apenas a interface do usuário da operação (com operações de login, atualização cadastral e consulta). Uma especificação mais detalhada, incluindo o funcionamento de funções administrativas, foi feita na disciplina de Engenharia de Software II.

Este protótipo foi apresentado no semestre 2022/2, na disciplina de Engenharia de Software III e prevê o reuso de software para ganhar tempo de desenvolvimento. Além do aproveitamento de parte do layout e da modelagem do banco de dados, foram usadas diversas bibliotecas do Rails para acelerar a entrega, como uma ferramenta de back-office (ActiveAdmin), a gestão de acesso de login e senha (Devise) e template de front-end Digital Trend, da TemplateMO (disponível em https://templatemo.com/tm-538-digital-trend).

O protótipo foi desenvolvido por Antonio Paulo Serpa Antunes.

Ao longo de todo o ciclo de desenvolvimento deste projeto participaram os seguintes estudantes: Jefferson Ribeiro, Marcos Vinicios Dornelles e Alexandre de Mesquita Fabian.