# Registrar - Это учебный групповой проект.
Так как это проектная работа с использованием Mock-данных, на некоторых этапах используются заглушки.

Приложение корпоративного сегмента, создано для ([аварийных комиссаров](https://ru.wikipedia.org/wiki/Аварийный_комиссар) - далее АК).
1. Экран авторизации. Для удобства, по умолчанию прописали данные для входа. 
\n Кнопка **"Забыли данные для входа"** вызывает Alert, в котором выводятся логин и пароль. Кнопка **"Информации"** ведёт на экран разработчиков. /n Кнопка **Войти** ведёт на экран со списком заявок.

<img width="300" src="https://user-images.githubusercontent.com/121757460/225208990-edf225c2-83a5-4e10-a913-f92d8ec14bf4.png">   <img width="300" src="https://user-images.githubusercontent.com/121757460/225206828-8299b846-8bb8-4d3e-8063-e418fa5d1482.png">

2. После нажатия на кнопку войти, попадаем на экран списка заявок (по задумке - АК их создает самостоятельно, но как дальнейшее развитие проекта - они могут приходить с сервера). По умолчанию 4 заявки. Реализован функционал, как создания новой заявки (Кнопка **Плюс** в верхнем правом углу экрана), так и удаление (свайп влево по ячейке с адресом заявки).

<img width="300" src="https://user-images.githubusercontent.com/121757460/225206867-cab5319d-7a92-48ee-af2d-89fc61fe2bbf.png">
P.S. если протянуть таблицу вниз - появится строка поиска по адресу заявки.

3. По клику на заявку, попадаем на экран со списком участников. Можно добавить новых участников (кнопка внизу экрана "Добавить участника"), удалить старых, так же свайпом влево.
<img width="300" src="https://user-images.githubusercontent.com/121757460/225206926-7e21e9cb-66d9-4dad-861b-e59e74462033.png">

4. По клику на участника, попадаем на экран с его данными (если это новый участник - поля будут пустые). Поле "марка" и "модель" обязательны для заполнения при добавлении участника ДТП.

<img width="300" src="https://user-images.githubusercontent.com/121757460/225206972-027dee7a-4586-4d8d-8af8-235dd09dbb7c.png">

При нажатии кнопки "Проверить полис" (поля "Серия полиса ОСАГО" и "Номер полиса ОСАГО") появляется "заглушка", будто сервер не доступен (опять же, отсылка на дальнейшее развитие).

<img width="300" src="https://user-images.githubusercontent.com/121757460/225207046-60443245-9c53-4715-90fd-f1be1478d36e.png">

5. Вернемся на предыдущий экран. В верхнем правом углу есть кнопка "Фотографии", при нажатии на неё переходим на экран с галереей. (Коллекции в данном случае нам очень не хватало, всё-таки инструмент из коробки). Мы не сдались и написали свою коллекцию, с "блэкджеком" и  касторкой TableViewCell =)

<img width="300" src="https://user-images.githubusercontent.com/121757460/225207072-bd46e5a5-9dd7-427a-bda5-21fb48db713f.png">


6. В верхнем правом углу иконка с камерой, по нажатию на неё должна открываться камера, но раз мы её не проходили ещё, то сделали Alert-заглушку.

На этом всё, спасибо за внимание)

P.S. Логотип "33 developers" связано с номером потока =)


Ссылки на GitHub разработчиков:
- [Манохин Алексей](https://github.com/Manohin)
- [Оспанов Айдар](https://github.com/Ospanidze)
- [Гурков Максим](https://github.com/maksimgurkov)
- [Солодянкин Игорь](https://github.com/SoloNineZero)
