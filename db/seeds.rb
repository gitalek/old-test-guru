# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories_data = [
  { title: 'Frontend' },
  { title: 'Backend' },
  { title: 'Enterprise' }
]
categories = Category.create!(categories_data)

users_data = [
  { name: 'Tony', login: 'Boss' },
  { name: 'Silvio', login: 'Sil' },
  { name: 'Paulie', login: 'Paoluccio' },
  { name: 'Parvati', login: 'Jan' },
  { name: 'Richard', login: 'Richie' }
]
users = User.create!(users_data)

tests_data = [
  { category_id: categories[0].id, title: 'HTML', level: 0, creator_id: users[4].id },
  { category_id: categories[1].id, title: 'Rust', level: 2, creator_id: users[3].id },
  { category_id: categories[0].id, title: 'HTML', level: 1, creator_id: users[2].id },
  { category_id: categories[1].id, title: 'Ruby', level: 2, creator_id: users[1].id },
  { category_id: categories[2].id, title: 'Java', level: 1, creator_id: users[0].id },
  { category_id: categories[1].id, title: 'Rails', level: 1, creator_id: users[4].id }
]
tests = Test.create!(tests_data)

tests_users_data = [
  { user_id: users[0].id, test_id: tests[0].id },
  { user_id: users[0].id, test_id: tests[2].id },
  { user_id: users[1].id, test_id: tests[4].id },
  { user_id: users[2].id, test_id: tests[1].id },
  { user_id: users[3].id, test_id: tests[3].id },
  { user_id: users[3].id, test_id: tests[0].id },
  { user_id: users[4].id, test_id: tests[5].id },
  { user_id: users[4].id, test_id: tests[1].id },
  { user_id: users[4].id, test_id: tests[0].id }
]
TestsUser.create!(tests_users_data)

questions_data = [
  { test_id: tests[0].id, body: 'Тег, делающий текст жирным' },
  { test_id: tests[0].id, body: 'Правильный способ вставить картинку в HTML' },
  { test_id: tests[0].id, body: 'Каким атрибутом определяется всплывающая подсказка для ссылки?' },
  { test_id: tests[0].id, body: 'Что значит буква "L" в аббревиатуре HTML?' },

  { test_id: tests[1].id, body: 'Ключевое слово для объявления функции в Rust' },
  { test_id: tests[1].id, body: 'В каком примере создаётся иммутабельная переменная box?' },

  { test_id: tests[2].id, body: 'Самая распространённая кодировка для HTML-страницы' },
  { test_id: tests[2].id, body: 'Атрибуты для задания ключевых слов в мета-теге' },

  { test_id: tests[3].id, body: 'Является ли `fail` ключевым словом в Ruby?' },
  { test_id: tests[3].id, body: 'Является ли `rescue` ключевым словом в Ruby?' },
  { test_id: tests[3].id, body: 'Класс объекта Object' },
  { test_id: tests[3].id, body: 'Класс объекта Class' },
  { test_id: tests[3].id, body: 'Родитель класса Class' },

  { test_id: tests[4].id, body: 'Выберите популярную систему сборки java-проектов' },
  { test_id: tests[4].id, body: 'Какого цикла нет в Java?' },
  { test_id: tests[4].id, body: 'Главный метод java-программы' },

  { test_id: tests[5].id, body: 'Компонент Rails, отвечающий за бизнесс-логику и взаимодействие с базой данных' },
  { test_id: tests[5].id, body: 'Шаблон для добавления колонки к таблице через генератор миграций' },
  { test_id: tests[5].id, body: 'Архитектурный паттерн, лежащий в основе Rails-приложений' }
]
questions = Question.create!(questions_data)

answers_data = [
  { question_id: questions[0].id, body: 'b', correct: true },
  { question_id: questions[0].id, body: 'i', correct: false },
  { question_id: questions[0].id, body: 'div', correct: false },
  { question_id: questions[0].id, body: 'weight', correct: false },
  { question_id: questions[0].id, body: 'bold', correct: false },
  { question_id: questions[1].id, body: '<img src="link_to_img.jpg">', correct: true },
  { question_id: questions[1].id, body: '<img alt="link_to_img.jpg">', correct: false },
  { question_id: questions[1].id, body: '<img href="link_to_img.jpg">', correct: false },
  { question_id: questions[1].id, body: '<img source="link_to_img.jpg">', correct: false },
  { question_id: questions[2].id, body: 'title', correct: true },
  { question_id: questions[2].id, body: 'alt', correct: false },
  { question_id: questions[2].id, body: 'src', correct: false },
  { question_id: questions[2].id, body: 'type', correct: false },
  { question_id: questions[3].id, body: 'Language', correct: true },
  { question_id: questions[3].id, body: 'Lazy', correct: false },
  { question_id: questions[3].id, body: 'Linter', correct: false },
  { question_id: questions[3].id, body: 'Link', correct: false },

  { question_id: questions[4].id, body: 'fn', correct: true },
  { question_id: questions[4].id, body: 'funct', correct: false },
  { question_id: questions[4].id, body: 'function', correct: false },
  { question_id: questions[4].id, body: 'new', correct: false },
  { question_id: questions[4].id, body: 'main', correct: false },
  { question_id: questions[5].id, body: 'let box = 2;', correct: true },
  { question_id: questions[5].id, body: 'let mut box = 2;', correct: true },
  { question_id: questions[5].id, body: 'let imut box = 2;', correct: true },
  { question_id: questions[5].id, body: 'const box = 2;', correct: true },

  { question_id: questions[6].id, body: 'UTF-8', correct: true },
  { question_id: questions[6].id, body: 'UTF-32', correct: false },
  { question_id: questions[6].id, body: 'Windows-1251', correct: false },
  { question_id: questions[6].id, body: 'CP866', correct: false },
  { question_id: questions[7].id, body: 'name, content', correct: true },
  { question_id: questions[7].id, body: 'keywords, content', correct: false },
  { question_id: questions[7].id, body: 'name, keywords', correct: false },

  { question_id: questions[8].id, body: 'Нет', correct: true },
  { question_id: questions[8].id, body: 'Да', correct: false },
  { question_id: questions[9].id, body: 'Да', correct: true },
  { question_id: questions[9].id, body: 'Нет', correct: false },
  { question_id: questions[10].id, body: 'Class', correct: true },
  { question_id: questions[10].id, body: 'BasicObject', correct: false },
  { question_id: questions[10].id, body: 'Module', correct: false },
  { question_id: questions[11].id, body: 'Class', correct: true },
  { question_id: questions[11].id, body: 'Module', correct: false },
  { question_id: questions[11].id, body: 'Object', correct: false },
  { question_id: questions[12].id, body: 'Module', correct: true },
  { question_id: questions[12].id, body: 'BasicObject', correct: false },

  { question_id: questions[13].id, body: 'Maven', correct: true },
  { question_id: questions[13].id, body: 'NPM', correct: false },
  { question_id: questions[13].id, body: 'Composer', correct: false },
  { question_id: questions[13].id, body: 'RubyGems', correct: false },
  { question_id: questions[14].id, body: 'loop', correct: true },
  { question_id: questions[14].id, body: 'for', correct: false },
  { question_id: questions[14].id, body: 'foreach', correct: false },
  { question_id: questions[14].id, body: 'while', correct: false },
  { question_id: questions[15].id, body: 'main', correct: true },
  { question_id: questions[15].id, body: 'fn', correct: false },
  { question_id: questions[15].id, body: 'begin', correct: false },
  { question_id: questions[15].id, body: 'call', correct: false },

  { question_id: questions[16].id, body: 'Model', correct: true },
  { question_id: questions[16].id, body: 'Controller', correct: false },
  { question_id: questions[16].id, body: 'Router', correct: false },
  { question_id: questions[16].id, body: 'View', correct: false },
  { question_id: questions[17].id, body: 'AddXXXToYYY', correct: true },
  { question_id: questions[17].id, body: 'RemoveXXXFromYYY', correct: false },
  { question_id: questions[17].id, body: 'ToXXXAddYYY', correct: false },
  { question_id: questions[17].id, body: 'FromXXXRemoveYYY', correct: false },
  { question_id: questions[18].id, body: 'MVC', correct: true },
  { question_id: questions[18].id, body: 'MVP', correct: false },
  { question_id: questions[18].id, body: 'Observer', correct: false },
  { question_id: questions[18].id, body: 'Composite', correct: false }
]
Answer.create!(answers_data)

