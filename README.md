# XSLT-Task1
<details>
  <summary>XSLT-Task1 description (ВАРИАНТ 3)</summary>
<pre>
 Преобразовать XML-документ в HTML при помощи XSLT, использовать стили CSS.

Требования:
- стили CSS вы создаете сами, чтобы страница не выглядела слишком «голой»;
- для элемента <event> создать заголовок, сгенерировать текст «Event» и использовать номер из атрибута id;
- heading – создать главный заголовок (выделите в зависимости от своих предпочтений); если атрибут type="title-footer" – отобразить элемент в конце документа;
- doc-level – создать div с самостоятельно заданным классом и применить какие-либо правила CSS;
- para – создать элемент p;
- атрибут position определяет положение (выравнивание элемента)
- обратите внимание на атрибут type; в зависимости от значения, сделайте следующее: text – курсивный текст; comment – выделить в блок с серым фон с самостоятельно заданными отступами от границ страницы; bluebox или redbox – отобразить в синем или красном блоке соответственно, по аналогии с  comment; unordered-list – маркированный список; ordered-list – нумерованный список; image – изображение;
- table – создать таблицу, table-heading – заголовок таблицы, table-row – строка, table-cell – ячейка (style – если задан, определяет выделение текста);
- у списков style определяет способ оформления списка;
- для изображений – изменить данные на те, которые будете использовать: атрибут source – имя файла, description – название картинки;
- элемент external-link – ссылка на внешний источник;
- для элемента date создать лэйбл «Date:», после которого непосредственно отобразить дату;
- элемент qa-block – блок вопросов и ответов; вопросы question отобразить красным цветом, ответы answer синим;
- если вы видите порядок элементов h1, h2, subheading, то в итоге вы должны отобразить h1 и subheading на одной строке, после чего вывести на экран элемент h2;
- если перед элементом h1 находится элемент para с атрибутом type="num", внутри которого находится не пустой элемент num -  отобразить его на одной строке с элементом h1.
</pre>
</details>



## Generate HTML

SaxonHE9-7-0-18J  transform ***xsl+xml*** 
 
### Test only my variant task (VARIANT 3)
```
java -jar saxon9he.jar -s:input.xml -xsl:stylesheet.xsl -o:TASK_1.html
```

### Test all transformation, descripted in file description.txt
```
java -jar saxon9he.jar -s:full-test.xml -xsl:stylesheet.xsl -o:FULL_TEST.html
```
 

### OR
Use file ***transform.bat***
