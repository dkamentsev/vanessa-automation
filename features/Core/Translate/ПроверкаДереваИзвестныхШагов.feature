# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка дерева известных шагов

Как разработчик
Я хочу чтобы я мог посмотреть дерево известных шагов
Чтобы я мог накликивать фичи используя известные шаги

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка перехода к определению шага из дерева шагов
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПереходаКОпределениюШага"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Имя процедуры' |
		| 'ОткрылосьОкно' |

	И я нажимаю на кнопку с именем 'ФормаОткрытьОпределениеШага'
	Тогда открылось окно 'Известные шаги:*'
	И в таблице "ДеревоШагов" я активизирую поле с именем "ДеревоШаговОписаниеШага"
	И в таблице "ДеревоШагов" поле с именем "ДеревоШаговТипШага" имеет значение 'Тогда открылось окно "Заголовок окна"'

	


Сценарий: Проверка переведнных шагов в дереве известных шагов.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыКеш"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И     я перехожу к закладке "Сервис"
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"

	И     я перехожу к закладке "Работа с UI"

	И     я нажимаю на кнопку "Добавить известный шаг"
	Тогда открылось окно "Известные шаги: Vanessa Automation*"

	И     в таблице "ДеревоШагов" я разворачиваю строку:
		| 'Тип' |
		| 'UI'  |
		
	И     в таблице "ДеревоШагов" я перехожу к строке:
		| 'Тип'    |
		| 'Tables' |
	И     в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	И     в таблице "ДеревоШагов" я перехожу к строке:
		| 'Тип'              |
		| 'List Form Filter' |
	И     в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	#далее илеи переход к шагу, который экспортируется из фичи
	И     в таблице "ДеревоШагов" я перехожу к строке:
		| 'Шаг'                                                  |
		| 'And I clear list form filter' |
	
	
Сценарий: Проверка дерева известных шагов
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой не подключая TestClient

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыКеш"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И     я перехожу к закладке "Работа с UI"
	И     я нажимаю на кнопку "Добавить известный шаг"
	
	Тогда открылось окно "Известные шаги*"
	
	И     в таблице "ДеревоШагов" я перехожу к строке:
	| 'Тип'             |
	| 'Встроенный язык' |
	И     в таблице "ДеревоШагов" я разворачиваю текущую строку
	
	И     в таблице "ДеревоШагов" я перехожу к строке:
		| 'Шаг'                                           |
		| 'Тогда я вызываю исключение "Текст исключения"' |
	