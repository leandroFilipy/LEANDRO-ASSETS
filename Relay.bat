@echo off
REM ============================================================
REM  Abre o Relay corretamente (com a flag -jar).
REM  Use este atalho: dois cliques aqui em vez de no Relay.jar.
REM  Coloque este arquivo NA MESMA PASTA do Relay.jar.
REM ============================================================
cd /d "%~dp0"

if not exist Relay.jar (
  echo [ERRO] Relay.jar nao encontrado nesta pasta.
  echo Coloque o Relay.bat na MESMA pasta do Relay.jar.
  pause
  exit /b 1
)

where javaw >nul 2>nul
if %errorlevel%==0 (
  start "" javaw -jar Relay.jar
  exit /b 0
)

where java >nul 2>nul
if %errorlevel%==0 (
  java -jar Relay.jar
  exit /b 0
)

echo [ERRO] Java nao encontrado. Instale o Java e tente de novo.
pause
