﻿# language: ru

Функциональность: Как правильно проверить доступность кнопки, элемента или пункта меню.

Сценарий: Как правильно проверить доступность кнопки, элемента или пункта меню.

	* Проверка доступности
		И элемент формы с именем "ИмяЭлемента" доступен

	* Проверка видимости
		И я жду появления элемента "Заголовок элемента" в течение 20 секунд
		И элемент формы "Заголовок поля" существует и невидим на форме
	