﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOn8317

@ServerCodeCoverage


Функциональность: Переход к строке дерева из деталей ошибок редактора

    Как разработчик
    Я хочу чтобы в редакторе можно было быстро перейти в дерево к строке с ошибкой
    Чтобы я мог быстро посмотреть сосдение шаги с текущим шагом в дереве шагов

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Переход к строке дерева из деталей ошибок редактора

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor36"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

						
	* Открытие деталей ошибки
		//Затем клик на картинку "ДеталиОшибкиТест"
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Элементы.VanessaEditor.Document.defaultView.document.querySelector(\".vanessa-error-links>a\").click()'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 2


	* Переход к строке дерева и проверка
		Тогда открылось окно 'Детали ошибки'
		И я нажимаю на кнопку с именем 'ФормаПерейтиКСтрокеДереваСОшибкой'
		Тогда открылось окно '*Vanessa Automation*'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
				
		И в таблице 'ДеревоТестов' поле с именем 'ДеревоТестовИДСтроки' имеет значение '3'
				
