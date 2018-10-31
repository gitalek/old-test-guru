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
categories = Category.create(categories_data)

tests_data = [
  { category_id: categories[0].id, title: 'HTML', level: 0 },
  { category_id: categories[1].id, title: 'Rust', level: 2 },
  { category_id: categories[0].id, title: 'HTML', level: 1 },
  { category_id: categories[1].id, title: 'Ruby', level: 2 },
  { category_id: categories[2].id, title: 'Java', level: 1 },
  { category_id: categories[1].id, title: 'Rails', level: 1 }
]
tests = Test.create(tests_data)

questions_data = [
  { test_id: tests[0], body: 'Тег, делающий текст жирным' },
  { test_id: tests[0], body: 'Правильный способ вставить картинку в HTML' },
  { test_id: tests[0], body: 'Каким атрибутом определяется всплывающая подсказка для ссылки?' },
  { test_id: tests[0], body: 'Что значит буква "L" в аббревиатуре HTML?' },

  { test_id: tests[1], body: 'Ключевое слово для объявления функции в Rust' },
  { test_id: tests[1], body: 'В каком примере создаётся иммутабельная переменная box?' },

  { test_id: tests[2], body: 'Самая распространённая кодировка для HTML-страницы' },
  { test_id: tests[2], body: 'Атрибуты для задания ключевых слов в мета-теге' },

  { test_id: tests[3], body: 'Является ли `fail` ключевым словом в Ruby?' },
  { test_id: tests[3], body: 'Является ли `rescue` ключевым словом в Ruby?' },
  { test_id: tests[3], body: 'Класс объекта Object' },
  { test_id: tests[3], body: 'Класс объекта Class' },
  { test_id: tests[3], body: 'Родитель класса Class' },

  { test_id: tests[4], body: 'Выберите популярную систему сборки java-проектов' },
  { test_id: tests[4], body: 'Какого цикла нет в Java?' },
  { test_id: tests[4], body: 'Главный метод java-программы' },

  { test_id: tests[5], body: 'Компонент Rails, отвечающий за бизнесс-логику и взаимодействие с базой данных' },
  { test_id: tests[5], body: 'Шаблон для добавления колонки к таблице через генератор миграций' },
  { test_id: tests[5], body: 'Архитектурный паттерн, лежащий в основе Rails-приложений' }
]
questions = Question.create(questions_data)

answers_data = [
  { question_id: questions[0], body: 'b', correct: true },
  { question_id: questions[0], body: 'i', correct: false },
  { question_id: questions[0], body: 'div', correct: false },
  { question_id: questions[0], body: 'weight', correct: false },
  { question_id: questions[0], body: 'bold', correct: false },
  { question_id: questions[1], body: '<img src="link_to_img.jpg">', correct: true },
  { question_id: questions[1], body: '<img alt="link_to_img.jpg">', correct: false },
  { question_id: questions[1], body: '<img href="link_to_img.jpg">', correct: false },
  { question_id: questions[1], body: '<img source="link_to_img.jpg">', correct: false },
  { question_id: questions[2], body: 'title', correct: true },
  { question_id: questions[2], body: 'alt', correct: false },
  { question_id: questions[2], body: 'src', correct: false },
  { question_id: questions[2], body: 'type', correct: false },
  { question_id: questions[3], body: 'Language', correct: true },
  { question_id: questions[3], body: 'Lazy', correct: false },
  { question_id: questions[3], body: 'Linter', correct: false },
  { question_id: questions[3], body: 'Link', correct: false },

  { question_id: questions[4], body: 'fn', correct: true },
  { question_id: questions[4], body: 'funct', correct: false },
  { question_id: questions[4], body: 'function', correct: false },
  { question_id: questions[4], body: 'new', correct: false },
  { question_id: questions[4], body: 'main', correct: false },
  { question_id: questions[5], body: 'let box = 2;', correct: true },
  { question_id: questions[5], body: 'let mut box = 2;', correct: true },
  { question_id: questions[5], body: 'let imut box = 2;', correct: true },
  { question_id: questions[5], body: 'const box = 2;', correct: true },

  { question_id: questions[6], body: 'UTF-8', correct: true },
  { question_id: questions[6], body: 'UTF-32', correct: false },
  { question_id: questions[6], body: 'Windows-1251', correct: false },
  { question_id: questions[6], body: 'CP866', correct: false },
  { question_id: questions[7], body: 'name, content', correct: true },
  { question_id: questions[7], body: 'keywords, content', correct: false },
  { question_id: questions[7], body: 'name, keywords', correct: false },

  { question_id: questions[8], body: 'Нет', correct: true },
  { question_id: questions[8], body: 'Да', correct: false },
  { question_id: questions[9], body: 'Да', correct: true },
  { question_id: questions[9], body: 'Нет', correct: false },
  { question_id: questions[10], body: 'Class', correct: true },
  { question_id: questions[10], body: 'BasicObject', correct: false },
  { question_id: questions[10], body: 'Module', correct: false },
  { question_id: questions[11], body: 'Class', correct: true },
  { question_id: questions[11], body: 'Module', correct: false },
  { question_id: questions[11], body: 'Object', correct: false },
  { question_id: questions[12], body: 'Module', correct: true },
  { question_id: questions[12], body: 'BasicObject', correct: false },

  { question_id: questions[13], body: 'Maven', correct: true },
  { question_id: questions[13], body: 'NPM', correct: false },
  { question_id: questions[13], body: 'Composer', correct: false },
  { question_id: questions[13], body: 'RubyGems', correct: false },
  { question_id: questions[14], body: 'loop', correct: true },
  { question_id: questions[14], body: 'for', correct: false },
  { question_id: questions[14], body: 'foreach', correct: false },
  { question_id: questions[14], body: 'while', correct: false },
  { question_id: questions[15], body: 'main', correct: true },
  { question_id: questions[15], body: 'fn', correct: false },
  { question_id: questions[15], body: 'begin', correct: false },
  { question_id: questions[15], body: 'call', correct: false },

  { question_id: questions[16], body: 'Model', correct: true },
  { question_id: questions[16], body: 'Controller', correct: false },
  { question_id: questions[16], body: 'Router', correct: false },
  { question_id: questions[16], body: 'View', correct: false },
  { question_id: questions[17], body: 'AddXXXToYYY', correct: true },
  { question_id: questions[17], body: 'RemoveXXXFromYYY', correct: false },
  { question_id: questions[17], body: 'ToXXXAddYYY', correct: false },
  { question_id: questions[17], body: 'FromXXXRemoveYYY', correct: false },
  { question_id: questions[18], body: 'MVC', correct: true },
  { question_id: questions[18], body: 'MVP', correct: false },
  { question_id: questions[18], body: 'Observer', correct: false },
  { question_id: questions[18], body: 'Composite', correct: false }
]
Answer.create(answers_data)

users_data = [
  { name: 'Tony', login: 'Boss' },
  { name: 'Silvio', login: 'Sil' },
  { name: 'Paulie', login: 'Paoluccio' },
  { name: 'Parvati', login: 'Jan' },
  { name: 'Richard', login: 'Richie' }
]
users = User.create(users_data)

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
TestsUser.create(tests_users_data)
