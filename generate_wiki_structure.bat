@echo off
setlocal enabledelayedexpansion

REM Crear carpeta wiki
mkdir wiki
cd wiki

REM Crear archivo Home.md (índice)
(
echo # Organizing a School with GitHub
echo.
echo ## Part I: Foundations
echo - [[1 - Introduction]]
echo - [[1.1 - Understanding a School as a System]]
echo - [[1.2 - Core Concepts in GitHub]]
echo.
echo ## Part II: Organizational Structure in GitHub
echo - [[2 - Repository Strategy]]
echo - [[2.1 - Using Issues to Represent Activities]]
echo - [[2.2 - Using Wikis for Documentation]]
echo - [[2.3 - Using the Code Area Wisely]]
echo.
echo ## Part III: Planning and Tracking
echo - [[3 - Projects as Time Containers]]
echo - [[3.1 - Cross-repo Organization]]
echo - [[3.2 - Best Practices for Long-Term Use]]
echo.
echo ## Part IV: Roles, Permissions, Visibility and Community
echo - [[4 - User Roles and Access Levels]]
echo - [[4.1 - Visibility and Privacy Strategy]]
echo - [[4.2 - Building a Collaborative Culture]]
echo.
echo ## Appendices
echo - [[A - Sample Labels]]
echo - [[B - Issue Templates]]
echo - [[C - Project Templates]]
echo - [[D - Suggested Folder Structures]]
echo - [[E - External Storage Options]]
echo - [[F - Glossary of GitHub Terms]]
) > Home.md

REM Crear archivo temporal con los nombres de secciones
(
echo 1 - Introduction
echo 1.1 - Understanding a School as a System
echo 1.2 - Core Concepts in GitHub
echo 2 - Repository Strategy
echo 2.1 - Using Issues to Represent Activities
echo 2.2 - Using Wikis for Documentation
echo 2.3 - Using the Code Area Wisely
echo 3 - Projects as Time Containers
echo 3.1 - Cross-repo Organization
echo 3.2 - Best Practices for Long-Term Use
echo 4 - User Roles and Access Levels
echo 4.1 - Visibility and Privacy Strategy
echo 4.2 - Building a Collaborative Culture
echo A - Sample Labels
echo B - Issue Templates
echo C - Project Templates
echo D - Suggested Folder Structures
echo E - External Storage Options
echo F - Glossary of GitHub Terms
) > section_list.txt

REM Leer línea por línea y crear los archivos .md
for /f "usebackq delims=" %%A in ("section_list.txt") do (
    echo # %%A > "%%A.md"
)

del section_list.txt

echo.
echo ✅ Numbered wiki structure created successfully.
pause
