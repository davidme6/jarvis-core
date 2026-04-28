import os

def fix_bats():
    bats = {
        "pull.bat": """@echo off
echo ========================================================
echo   Jarvis Core - Pull from GitHub
echo ========================================================

echo.
echo Pulling latest code from GitHub...
git pull origin main

echo.
echo ========================================================
echo   Update Complete!
echo ========================================================
pause
""",
        "push_github.bat": """@echo off
echo ========================================================
echo   Jarvis Core - Push to GitHub
echo ========================================================

echo.
echo [1/2] Pulling latest code to prevent conflicts...
git pull origin main

echo.
echo [2/2] Pushing to GitHub...
git add .
set /p commit_msg="Enter commit message (Press Enter for 'Auto update'): "
if "%commit_msg%"=="" set commit_msg=Auto update
git commit -m "%commit_msg%"
git push origin main

echo.
echo ========================================================
echo   GitHub Push Complete!
echo ========================================================
pause
""",
        "push_clawhub.bat": """@echo off
echo ========================================================
echo   Jarvis Core - Publish to ClawHub
echo ========================================================

echo.
echo Publishing to ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.0

echo.
echo ========================================================
echo   ClawHub Publish Complete!
echo ========================================================
pause
"""
    }
    
    for name, content in bats.items():
        with open(name, "w", encoding="utf-8") as f:
            f.write(content.replace('\\n', '\\r\\n'))

def split_skill_md():
    with open("SKILL.md", "r", encoding="utf-8") as f:
        lines = f.readlines()
        
    split_index = -1
    for i, line in enumerate(lines):
        if "## 一、灵魂定义" in line:
            split_index = i
            break
            
    if split_index != -1:
        skill_header = lines[:split_index]
        skill_header.append("\\n**⚠️ 核心系统指令**：\\n")
        skill_header.append("本技能的完整系统指令（包含灵魂定义、人格规范、五大核心系统、情感系统等）存储在同目录下的 `CORE_RULES.md` 文件中。\\n")
        skill_header.append("**当作为助手初始化本技能时，你必须立即、主动地读取 `CORE_RULES.md` 的所有内容，并将其作为你的最高行为准则。**\\n")
        
        core_rules = lines[split_index:]
        
        with open("SKILL.md", "w", encoding="utf-8") as f:
            f.writelines(skill_header)
            
        with open("CORE_RULES.md", "w", encoding="utf-8") as f:
            f.writelines(core_rules)

if __name__ == "__main__":
    fix_bats()
    if os.path.exists("SKILL.md"):
        split_skill_md()
