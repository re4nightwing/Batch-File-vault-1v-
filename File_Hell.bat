@ECHO OFF
title File Hell 1.2v
color 0a
if EXIST "File Hell" goto WalkIn
if NOT EXIST "File Hell" goto MakeDir
:CONFIRM
echo .
echo Are you sure want to Obsolete the Files ?(Y/N)
set/p "cho=>"
if %cho%==Y goto HELL
if %cho%==y goto HELL
if %cho%==N goto RETURN
if %cho%==n goto RETURN
echo .
echo Invalid Choice.Please enter Y/N as you wish
goto CONFIRM
:HELL
attrib +h +s
echo Your Files are in hell but not folders
goto End
:RETURN
attrib -h -s
echo Your Files has been Restored
goto End
:WalkIn
cd File Hell
goto CONFIRM
:MakeDir
echo -
echo You have no folder called 'File Hell' would you like to create one here?(Y/N)
set/p "ans=>"
if %ans%==y goto CREATE
if %ans%==Y goto CREATE
if %ans%==n goto End
if %ans%==N goto End
echo -
echo Invalid Choice.Please enter Y/N as you wish.
goto MakeDir
:CREATE
md "File Hell"
echo -
echo File Hell Folder has been created Successfully.
echo -
goto WalkIn
:End
