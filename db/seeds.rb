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
Category.create(categories_data)

tests_data = [
  { category_id: 1, title: 'HTML', level: 0 },
  { category_id: 2, title: 'Rust', level: 2 },
  { category_id: 1, title: 'HTML', level: 1 },
  { category_id: 2, title: 'Ruby', level: 2 },
  { category_id: 3, title: 'Java', level: 1 },
  { category_id: 2, title: 'Rails', level: 1 }
]
Test.create(tests_data)

questions_data = [
  { test_id: 1, body: 'Тег, делающий текст жирным' },
  { test_id: 1, body: 'Правильный способ вставить картинку в HTML' },
  { test_id: 1, body: 'Каким атрибутом определяется всплывающая подсказка для ссылки?' },
  { test_id: 1, body: 'Что значит буква "L" в аббревиатуре HTML?' },

  { test_id: 2, body: 'Ключевое слово для объявления функции в Rust' },
  { test_id: 2, body: 'В каком примере создаётся иммутабельная переменная box?' },

  { test_id: 3, body: 'Самая распространённая кодировка для HTML-страницы' },
  { test_id: 3, body: 'Атрибуты для задания ключевых слов в мета-теге' },

  { test_id: 4, body: 'Является ли `fail` ключевым словом в Ruby?' },
  { test_id: 4, body: 'Является ли `rescue` ключевым словом в Ruby?' },
  { test_id: 4, body: 'Класс объекта Object' },
  { test_id: 4, body: 'Класс объекта Class' },
  { test_id: 4, body: 'Родитель класса Class' },

  { test_id: 5, body: 'Выберите популярную систему сборки java-проектов' },
  { test_id: 5, body: 'Какого цикла нет в Java?' },
  { test_id: 5, body: 'Главный метод java-программы' },

  { test_id: 6, body: 'Компонент Rails, отвечающий за бизнесс-логику и взаимодействие с базой данных' },
  { test_id: 6, body: 'Шаблон для добавления колонки к таблице через генератор миграций' },
  { test_id: 6, body: 'Архитектурный паттерн, лежащий в основе Rails-приложений' }
]
Question.create(questions_data)

answers_data = [
  { question_id: 1, body: 'b', correct: true },
  { question_id: 1, body: 'i', correct: false },
  { question_id: 1, body: 'div', correct: false },
  { question_id: 1, body: 'weight', correct: false },
  { question_id: 1, body: 'bold', correct: false },
  { question_id: 2, body: '<img src="link_to_img.jpg">', correct: true },
  { question_id: 2, body: '<img alt="link_to_img.jpg">', correct: false },
  { question_id: 2, body: '<img href="link_to_img.jpg">', correct: false },
  { question_id: 2, body: '<img source="link_to_img.jpg">', correct: false },
  { question_id: 3, body: 'title', correct: true },
  { question_id: 3, body: 'alt', correct: false },
  { question_id: 3, body: 'src', correct: false },
  { question_id: 3, body: 'type', correct: false },
  { question_id: 4, body: 'Language', correct: true },
  { question_id: 4, body: 'Lazy', correct: false },
  { question_id: 4, body: 'Linter', correct: false },
  { question_id: 4, body: 'Link', correct: false },

  { question_id: 5, body: 'fn', correct: true },
  { question_id: 5, body: 'funct', correct: false },
  { question_id: 5, body: 'function', correct: false },
  { question_id: 5, body: 'new', correct: false },
  { question_id: 5, body: 'main', correct: false },
  { question_id: 6, body: 'let box = 2;', correct: true },
  { question_id: 6, body: 'let mut box = 2;', correct: true },
  { question_id: 6, body: 'let imut box = 2;', correct: true },
  { question_id: 6, body: 'const box = 2;', correct: true },

  { question_id: 7, body: 'UTF-8', correct: true },
  { question_id: 7, body: 'UTF-32', correct: false },
  { question_id: 7, body: 'Windows-1251', correct: false },
  { question_id: 7, body: 'CP866', correct: false },
  { question_id: 8, body: 'name, content', correct: true },
  { question_id: 8, body: 'keywords, content', correct: false },
  { question_id: 8, body: 'name, keywords', correct: false },

  { question_id: 9, body: 'Нет', correct: true },
  { question_id: 9, body: 'Да', correct: false },
  { question_id: 10, body: 'Да', correct: true },
  { question_id: 10, body: 'Нет', correct: false },
  { question_id: 11, body: 'Class', correct: true },
  { question_id: 11, body: 'BasicObject', correct: false },
  { question_id: 11, body: 'Module', correct: false },
  { question_id: 12, body: 'Class', correct: true },
  { question_id: 12, body: 'Module', correct: false },
  { question_id: 12, body: 'Object', correct: false },
  { question_id: 13, body: 'Module', correct: true },
  { question_id: 13, body: 'BasicObject', correct: false },

  { question_id: 14, body: 'Maven', correct: true },
  { question_id: 14, body: 'NPM', correct: false },
  { question_id: 14, body: 'Composer', correct: false },
  { question_id: 14, body: 'RubyGems', correct: false },
  { question_id: 15, body: 'loop', correct: true },
  { question_id: 15, body: 'for', correct: false },
  { question_id: 15, body: 'foreach', correct: false },
  { question_id: 15, body: 'while', correct: false },
  { question_id: 16, body: 'main', correct: true },
  { question_id: 16, body: 'fn', correct: false },
  { question_id: 16, body: 'begin', correct: false },
  { question_id: 16, body: 'call', correct: false },

  { question_id: 17, body: 'Model', correct: true },
  { question_id: 17, body: 'Controller', correct: false },
  { question_id: 17, body: 'Router', correct: false },
  { question_id: 17, body: 'View', correct: false },
  { question_id: 18, body: 'AddXXXToYYY', correct: true },
  { question_id: 18, body: 'RemoveXXXFromYYY', correct: false },
  { question_id: 18, body: 'ToXXXAddYYY', correct: false },
  { question_id: 18, body: 'FromXXXRemoveYYY', correct: false },
  { question_id: 19, body: 'MVC', correct: true },
  { question_id: 19, body: 'MVP', correct: false },
  { question_id: 19, body: 'Observer', correct: false },
  { question_id: 19, body: 'Composite', correct: false }
]
Answer.create(answers_data)

users_data = [
  { name: 'Tony', login: 'Boss' },
  { name: 'Silvio', login: 'Sil' },
  { name: 'Paulie', login: 'Paoluccio' },
  { name: 'Parvati', login: 'Jan' },
  { name: 'Richard', login: 'Richie' }
]
User.create(users_data)
