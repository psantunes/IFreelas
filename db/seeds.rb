# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# frozen_string_literal: true

Admin.create(name: 'admin', email: 'admin@admin.com', password: 'qwerty')

campuspoa = Campus.create(name: 'IFRS - Campus Porto Alegre')
Course.create(name: 'Tecnologia em Sistemas para Internet', campus: campuspoa)
Course.create(name: 'Técnico em Redes de Computadores', campus: campuspoa)

Skill.create(name: 'HTML')
Skill.create(name: 'CSS')
Skill.create(name: 'Javascript')
Skill.create(name: 'Git')
Skill.create(name: 'MySQL')
Skill.create(name: 'PostgreSQL')
Skill.create(name: 'Oracle')
Skill.create(name: 'PHP')
Skill.create(name: 'Java')
Skill.create(name: 'C#')
Skill.create(name: 'Ruby')
Skill.create(name: 'Python')
Skill.create(name: 'VueJS')
Skill.create(name: 'React')
Skill.create(name: 'Angular')
Skill.create(name: 'Infraestrutura de redes')
Skill.create(name: 'Manutenção de computadores')
Skill.create(name: 'Linux')
Skill.create(name: 'Photoshop')
Skill.create(name: 'CorelDraw')
Skill.create(name: 'Docker')
Skill.create(name: 'TDD')
Skill.create(name: 'Bootstrap')
Skill.create(name: 'Azure')
Skill.create(name: 'AWS')

Language.create(name: 'Inglês')
Language.create(name: 'Espanhol')
Language.create(name: 'Libras')
Language.create(name: 'Alemão')
Language.create(name: 'Francês')

Region.create(name: 'Porto Alegre - Região Central')
Region.create(name: 'Porto Alegre - Zona Sul')
Region.create(name: 'Porto Alegre - Zona Leste')
Region.create(name: 'Porto Alegre - Zona Norte')
Region.create(name: 'Canoas')
Region.create(name: 'Cachoeirinha e Gravataí')
Region.create(name: 'Viamão')
