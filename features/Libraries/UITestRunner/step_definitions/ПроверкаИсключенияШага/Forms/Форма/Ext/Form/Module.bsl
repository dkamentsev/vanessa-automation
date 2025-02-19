﻿
#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПроверяюШагиНаИсключение(ТабПарам)","ПроверяюШагиНаИсключение","Когда Проверяю шаги на Исключение:" + Символы.ПС + Символы.Таб + Символы.Таб + "|'И     в поле с именем ""Наименование2"" я ввожу текст ""Тестовый Элемент""'|", "Проверка негативного поведения шага. Т.е. проверяемый шаг/шаги должны вызвать исключние.","Прочее.Исключения");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


&НаКлиенте
//Когда Проверяю шаги на Исключение:
//@ПроверяюШагиНаИсключение(ТабПарам)
Процедура ПроверяюШагиНаИсключение(ТабПарам) Экспорт
	
	Если ТабПарам.Количество() < 1 Тогда	// строка данных
		ВызватьИсключение Ванесса.ПолучитьТекстСообщенияПользователю("Должна быть передана минимум 1 строка");		
	КонецЕсли;
	
	Ванесса.УстановитьОграничениеНаКоличествоПопытокДействий(Истина);
	
	Для каждого ИсключаемыйШаг Из ТабПарам Цикл
		ШагВызвалИсключение = Ложь;
		Попытка
			Ванесса.Шаг(ИсключаемыйШаг.Кол1);
		Исключение
			ШагВызвалИсключение = Истина;
		КонецПопытки;
		Если Не ШагВызвалИсключение Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Шаг <%1> должен был вызвать исключение, а он выполнился корректно.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИсключаемыйШаг.Кол1);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;
	КонецЦикла;
	
	Ванесса.УстановитьОграничениеНаКоличествоПопытокДействий(Ложь);
КонецПроцедуры
