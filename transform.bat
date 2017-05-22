rem test only my variant task (Vitali Vikhliayeu – test3.xml)
java -jar saxon9he.jar -s:input.xml -xsl:stylesheet.xsl -o:TASK_1.html

rem test all transformation, descripted in file description.txt
java -jar saxon9he.jar -s:full-test.xml -xsl:stylesheet.xsl -o:FULL_TEST.html