# Registrar
Это учебный групповой проект.
Обращу внимание, в данном проекте использовались только элементы и методы, которые прошли в обучении. Самая большая пробема была - то что нельзя использвоаться UICollectionView. С этой задачей справились, на мой взгляд отлтчно, реализовав функционал черещ UITableView.

Приложение узконаправленное, создано для [Авариыйных комиссаров](https://ru.wikipedia.org/wiki/Аварийный_комиссар).
1. Экран авторизации. Для удобства, по умолчанию прописали данные для авторизации. Кнопка "забыли данные для входа" вызывает Alert, в котором выводятся данные для авторизации.

<!-- ![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 27 59](https://user-images.githubusercontent.com/121757460/225206798-4b4d6728-c4bf-41e5-98b7-cd310bf3b5ee.png) -->
<img src="[path/to/screenshot.png](https://user-images.githubusercontent.com/121757460/225206798-4b4d6728-c4bf-41e5-98b7-cd310bf3b5ee.png)" width="300">

В верхнем правом углу красная кнопка ведёт на экран разработчиков.
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 28 51](https://user-images.githubusercontent.com/121757460/225206828-8299b846-8bb8-4d3e-8063-e418fa5d1482.png)

2. После нажатия на кнопку войти, попадаем на экран списка заявок (по задумке - АК их создает самостоятельно, но как дальнейшее развитие проекта - они могут приходить с сервера). По умолчанию 4 заявки. Реализован функционал, как создания новой заявки (+ в верхнем правом углу экрана), так и удаление (свайп влево по ячейке с адресом заявки).
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 28 56](https://user-images.githubusercontent.com/121757460/225206867-cab5319d-7a92-48ee-af2d-89fc61fe2bbf.png)
P.S. если протянуть таблицу вниз - появится строка поиска по адресу заявки.

3. По клику на заявку, попадаем на экран со списком участников. Можно добавить новых участников (кнопка внизу экрана "Добавить участника"), удалить старых, так же свайпом влево.
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 29 00](https://user-images.githubusercontent.com/121757460/225206926-7e21e9cb-66d9-4dad-861b-e59e74462033.png)

4. По клику на участника, попадаем на экран с его данными (если это новый участник - поля будут пустые). Поле "марка" и "модель" обязательны для заполнения при добавлении участника ДТП.
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 29 03](https://user-images.githubusercontent.com/121757460/225206972-027dee7a-4586-4d8d-8af8-235dd09dbb7c.png)

При нажатии кнопки "Проверить полис" (поля "Серия полиса ОСАГО" и "Номер полиса ОСАГО") появляется "заглушка", будто сервер не доступен (опять же, отсылка на дальнейшее развитие).
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 29 06](https://user-images.githubusercontent.com/121757460/225207046-60443245-9c53-4715-90fd-f1be1478d36e.png)

5. Вернемся на предыдущий экран. В верхнем правом углу есть кнопка "Фотографии", при нажатии на неё переходим на экран с галереей. (Коллекции в данном случае нам очень не хватало, всё-таки инструмент из коробки). Мы не сдались и написали свою коллекцию, с "блэкджеком" и  касторкой TableViewCell =)
![Simulator Screen Shot - iPhone SE (3rd generation) - 2023-03-14 at 14 29 10](https://user-images.githubusercontent.com/121757460/225207072-bd46e5a5-9dd7-427a-bda5-21fb48db713f.png)

6. В верхнем правом углу иконка с камерой, по нажатию на неё должна открываться камера, но раз мы её не проходили ещё, то сделали Alert-заглушку.

На этом всё, спасибо за внимание)

P.S. Логотип "33 developers" связано с номером потока =)
