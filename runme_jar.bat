@echo off
CLS
for %%f in (*.jar) do (
SET JAR-FILE=%%~nf.jar
)
ECHO Running java file %JAR-FILE%...
ECHO.
java -Dfile.encoding="UTF-8" -jar %JAR-FILE%
echo.
echo.
