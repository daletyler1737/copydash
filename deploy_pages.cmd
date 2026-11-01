@echo off
REM 用法: deploy_pages.cmd <ACCOUNT_ID>
setlocal
for /f "usebackq tokens=1,* delims==" %%a in ("%USERPROFILE%\.secrets\cf.env") do if "%%a"=="CLOUDFLARE_API_TOKEN" set CLOUDFLARE_API_TOKEN=%%b
set CLOUDFLARE_ACCOUNT_ID=%1
cd /d "%~dp0"
wrangler pages project create copydash --production-branch=main
wrangler pages deploy _pages_deploy --project-name=copydash --branch=main --commit-dirty=true
