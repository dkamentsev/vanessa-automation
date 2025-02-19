# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

Функционал: Проверка формирования отчета Cucumber

Как разработчик
Я хочу чтобы корректно формировался отчет Cucumber
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient
	
Сценарий: Проверка отчета Cucumber
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаCucumber"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	И я разворачиваю группу с именем "ГруппаОтчеты"
	И я перехожу к закладке с именем "ГруппаCucumber"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеCucumberJson'
	И     в поле каталог отчета Cucumber я указываю путь к относительному каталогу "tools\Cucumber"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге Cucumber появился 1 файл json
