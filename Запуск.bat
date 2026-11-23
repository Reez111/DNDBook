@echo off
cd /d "%~dp0"
py -m venv .venv || goto fail
.venv\Scripts\python -m pip install -r requirements.txt || goto fail
.venv\Scripts\python -m streamlit run app.py --server.address=127.0.0.1
:fail
pause
