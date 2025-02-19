# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

# т.к. на 8.3.9 не работает нажатие на кнопку Контекстного Меню
@IgnoreOn839



Функционал: Проверка формирования отчета Allure

Как разработчик
Я хочу чтобы корректно формировался отчет Allure
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient

	
Сценарий: Проверка прикрепления файла к шагу
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure9"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"attachments": ['|
		|'"name": "ФичаДляПроверкиОтчетаAllure9.feature",'|
		|'"type": "feature"'|
	
	
			
	
	
Сценарий: Проверка заполнения suite
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure8"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	И в поле с именем 'ГруппировкаTestSuites' я ввожу текст 'ИмяФичи'
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"name": "suite",'|
		|'"value": "Тестовая фича, проверяющая заполнение suite"'|
	
	
		


Сценарий: Проверка тегов severity
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure7"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И в таблице "ДанныеАллюрМеток" я нажимаю на кнопку с именем 'ДанныеАллюрМетокДобавить'
	И в таблице "ДанныеАллюрМеток" в поле 'Регулярное выражение' я ввожу текст 'critical'
	И я перехожу к следующему реквизиту
	И в таблице "ДанныеАллюрМеток" в поле 'Имя метки' я ввожу текст 'severity'
	И я перехожу к следующему реквизиту
	И в таблице "ДанныеАллюрМеток" в поле с именем 'ДанныеАллюрМетокЗначение' я ввожу текст 'critical'
	И в таблице "ДанныеАллюрМеток" я завершаю редактирование строки
	
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"name": "severity",'|
		|'"value": "critical"'|
	
	
	
		
	
Сценарий: Проверка заполнения полей message и trace два исключения
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure6"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"message": "Исключение основное."'|
	
	
	
	
	
Сценарий: Проверка заполнения полей message и trace простой
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllureСтруктура3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"message": "Тест."'|
	
	Если Версия платформы "<" "8.3.8.1" Тогда	
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И файл "$НайденноеИмяФайлаjson$" содержит строки
				|'"trace": "{Форма.Форма.Форма'|
		Иначе		
			И файл "$НайденноеИмяФайлаjson$" содержит строки
				|'"trace": "{Форма.Тест_Условие.Форма'|
	Иначе
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И файл "$НайденноеИмяФайлаjson$" содержит строки
				|'"trace": "{ВнешняяОбработка.Условие.Форма.Форма.Форма'|
		Иначе		
			И файл "$НайденноеИмяФайлаjson$" содержит строки
				|'"trace": "{ВнешняяОбработка.VanessaAutomationsingle.Форма.Тест_Условие.Форма'|
	
	
	
Сценарий: Проверка группирования структуры сценария, когда имя примера  берётся из Description или Описание
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllureСтруктура2"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст '#report.epic='
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст 'ИмяФичи'
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'ИмяСценария'
	И я перехожу к следующему реквизиту
	
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Уровень_epic' |
		| 'feature' | 'Тестовая фича, проверяющая генерацию отчета структуры сценария в Allure часть 2' |
		| 'story'   | 'Название структуры сценария 2' |
	
	//проверка, что имя примера берётся из Description
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"name": "Пример1"'|
	
	И файл "$НайденноеИмяФайлаjson$" не содержит строки
		|'"name": "Название структуры сценария 2 №1"'|
	
Сценарий: Проверка группирования структуры сценария, когда имя примера не берётся из Description
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllureСтруктура1"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст '#report.epic='
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст 'ИмяФичи'
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'ИмяСценария'
	И я перехожу к следующему реквизиту
	
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Уровень_epic' |
		| 'feature' | 'Тестовая фича, проверяющая генерацию отчета структуры сценария в Allure часть 1' |
		| 'story'   | 'Название структуры сценария' |
	
	//проверка, что имя примера берётся из строки примера
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		|'"name": "\| Пример1        \|"'|
	
	
	
	
	
	
	
Сценарий: Проверка прикладывания скриншота к отчету Allure
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure5"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст 'ИмяФичи'
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст '#report.feature='
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'ИмяФичи'
	И я перехожу к следующему реквизиту
	
	//снятие скринов
	И я устанавливаю флаг "Формировать скриншот при ошибке"
	И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Тестовая фича, проверяющая генерацию отчета Allure часть 5' |
		| 'feature' | 'УровеньFeature'                                             |
		| 'story'   | 'Тестовая фича, проверяющая генерацию отчета Allure часть 5' |
	
	И файл "$НайденноеИмяФайлаjson$" содержит строки
		| '"name": "screenshot"' |
		| '"type": "image/png"'  |
		
	
	
	
Сценарий: Проверка отчета Allure когда в иерархии отчета используется ИмяФичи
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст 'ИмяФичи'
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст '#report.feature='
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'ИмяФичи'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 2 файл json
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Тестовая фича, проверяющая генерацию отчета Allure часть 3' |
		| 'feature' | 'УровеньFeature'                                             |
		| 'story'   | 'Тестовая фича, проверяющая генерацию отчета Allure часть 3' |
	
	
	
	
Сценарий: Проверка отчета Allure когда иерархия отчета задана в параметрах JSON часть 2
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст 'Каталог1'
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст '#report.feature='
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'Каталог2'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 2 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Support'        |
		| 'feature' | 'УровеньFeature' |
		| 'story'   | 'Templates'      |
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="Support"'                                        |
	//	| 'name="feature" value="УровеньFeature"'                              |
	//	| 'name="story" value="Templates"'                                     |
	
	
	
	
Сценарий: Проверка отчета Allure когда иерархия отчета задана в параметрах JSON часть 1
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure4"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст '#report.epic='
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст 'Каталог1'
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'ИмяСценария'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'уровень1'                                     |
		| 'feature' | 'Support'                                      |
		| 'story'   | 'Story. Выполнение первого простого сценария.' |
	
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="уровень1"'                                        |
	//	| 'name="feature" value="Support"'                                      |
	//	| 'name="story" value="Story. Выполнение первого простого сценария."'   |
	//	| 'name="story" value="Story. Выполнение второго простого сценария."'   |
	



Сценарий: Проверка отчета Allure когда иерархия отчета задана только в фиче
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 2 файл json
	
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'уровень1'  |
		| 'feature' | 'уровень2'  |
		| 'story'   | 'уровень3'  |
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="уровень1"'    |
	//	| 'name="feature" value="уровень2"' |
	//	| 'name="story" value="уровень3"'   |
	
	И     В форме "*Vanessa automation*" в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                                                     |
		| 'Выполнение второго простого сценария. Тестовая фича, проверяющая генерацию отчета Allure часть 1' |
	#И     В открытой форме я нажимаю на кнопку с заголовком "Выполнить с начала"
	И я снимаю флаг 'Сценарии выполнены'
	И я выбираю пункт контекстного меню "Выполнить с начала" на элементе формы с именем "ДеревоТестов"
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 30 секунд
	И в каталоге аллюр появился 3 файл json
	



Сценарий: Проверка отчета Allure когда в иерархии отчета используется английский язык featurename
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст 'featurename'
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст '#report.feature='
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'featurename'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 2 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Тестовая фича, проверяющая генерацию отчета Allure часть 3'  |
		| 'feature' | 'УровеньFeature'                                              |
		| 'story'   | 'Тестовая фича, проверяющая генерацию отчета Allure часть 3'  |
	
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="Тестовая фича, проверяющая генерацию отчета Allure часть 3"'  |
	//	| 'name="feature" value="УровеньFeature"'                                           |
	//	| 'name="story" value="Тестовая фича, проверяющая генерацию отчета Allure часть 3"' |




Сценарий: Проверка отчета Allure когда иерархия отчета задана в параметрах JSON на английском языке часть 2 
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure3"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст 'catalog1'
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст '#report.feature='
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'catalog2'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 2 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'Support'        |
		| 'feature' | 'УровеньFeature' |
		| 'story'   | 'Templates'      |
	
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="Support"'                                        |
	//	| 'name="feature" value="УровеньFeature"'                              |
	//	| 'name="story" value="Templates"'                                     |

Сценарий: Проверка отчета Allure когда иерархия отчета задана в параметрах JSON английский язык часть 1
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure4"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеАллюр'
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	
	И я перехожу к закладке "Служебная"
	И в поле каталог относительно которого надо строить иерархию я ввожу путь к каталогу features
	И в поле с именем 'УровеньОтчета1Служебный' я ввожу текст '#report.epic='
	И в поле с именем 'УровеньОтчета2Служебный' я ввожу текст 'catalog1'
	И в поле с именем 'УровеньОтчета3Служебный' я ввожу текст 'scenarioname'
	И я перехожу к следующему реквизиту
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге аллюр появился 1 файл json
	
	И json файл "$НайденноеИмяФайлаjson$" содержит значения в узле "labels"
		| 'epic'    | 'уровень1'                                     |
		| 'feature' | 'Support'                                      |
		| 'story'   | 'Story. Выполнение первого простого сценария.' |
	
	
	//И файл "$НайденноеИмяФайлаjson$" содержит строки
	//	| 'name="epic" value="уровень1"'                                        |
	//	| 'name="feature" value="Support"'                                      |
	//	| 'name="story" value="Story. Выполнение первого простого сценария."'   |
	//	| 'name="story" value="Story. Выполнение второго простого сценария."'   |