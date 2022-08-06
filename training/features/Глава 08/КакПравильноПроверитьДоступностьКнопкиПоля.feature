﻿# language: ru

@lessons

Функционал: Интерактивная справка. Как правильно проверить доступность кнопки, элемента или пункта меню.

Сценарий: Как правильно проверить доступность кнопки, элемента или пункта меню.

	* Привет! В этом уроке я расскажу тебе про то, как правильно проверить доступность кнопки, элемента формы или пункта меню. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* Загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКакПравильноПроверитьДоступностьКнопкиПоля.feature"

	* Существует несколько шагов, которые проверяют доступность элементов формы.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Пример проверки доступности элемента' подсценарий

	* Или которые делают проверку видимости элементов формы	
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 12 строку 'Пример проверки видимости элемента' подсценарий

	* Это не все такие шаги, но для примера их хватит.
	* Важно понимать одну особенность.
	* Такие шаги проверяют не реальную видимость или доступность элементов.
	* Они проверяют специальные флаги, которые есть у элементов формы.
	* Особенность платформы 1С такова, что у элемента формы может стоять флаг видимости, но при этом он может быть реально не видим пользователю.
	* Такой эффект можно получить, например, если элемент формы скрыт через условное оформление или с помощью функциональной опции.

	* Из-за этой особенности такие шаги нужно использовать только в том случае, если не используются подобные механизмы скрытия элементов, что бывает конечно не всегда.

	* Есть другое решение этой задачи.
		
	* Нужно попытаться выполнить действие с элементом формы, например, попытаться нажать на кнопку и проверить, что при этом вызывается исключение.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКакПравильноПроверитьДоступностьКнопкиПоля2.feature"

	* В первом примере используется специальный шаг, который проверяет негативное поведение других шагов.	
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 11 строку 'Специальный шаг' подсценарий
	* Перед этим необходимо проверить, что кнопка существует. Иначе можно получить ложно положительный результат, т.к. шаг вызовет исключение из-за того, что кнопка не найдена на форме.	
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Проверка, что кнопка существует' подсценарий
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 11 строку 'Проверяемый шаг' подсценарий

	* Во втором примере применяется таже идея, но вместо специального шага используется конструкция попытка исключение
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 21 строку 'Используется Попытка/Исключение' подсценарий
	* Перед этим также необходимо проверить, что кнопка существует.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 16 строку 'Проверка, что кнопка существует' подсценарий

	* На этом всё, переходи к следующему уроку интерактивной справки.


