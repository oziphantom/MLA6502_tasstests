java -jar D:\pathstuff\BDD6502-1.0.4-SNAPSHOT-jar-with-dependencies.jar --format pretty  --glue TestGlue  --monochrome features

if %ERRORLEVEL% NEQ 0 goto :end

del *.prg
del *.html
del *.mla

:end