ECHO OFF
REM wlv_INIT 20230701          #Baseline Version Check - 20230701 is Base Template and Alpha
REM wlv_DATE 20230805          #Release Date
REM wlv_NAME 20230805Adam002   #Date / Module / Version
REM wlv_NAMX 20230805Driv001   #Script Name
REM wlv_CHKS 0000000000000000  #Checksum, But Not As You Know It - All 0 Means No Checks But Will Be Highlighted If Used by Master Scripts. 
REM wlv_DNGR 109119            #Danger Level, 000 and 101 will NEVER be set! Please note that the final 2 digits are essentially the level. Anything 20+ requires extra oncern, especially when running as admin.
REM Seriously check all scripts, especially running as admin! 
REM The issue's not whether you're paranoid, Lenny, I mean look at this ____, the issue is whether you're paranoid enough.         
REM TODO: Automate, Keyword Lookup, Move To Powershell, Automated Fix, Allow Changing Hard Coded Output File Location
echo MxSxC1 - Project Wolverine - We Fight For The User

echo .
echo --------------------------------------------------------------------
echo +++++++++++Memory Integrity Driver Investigation++++++++++++++++++++
echo This Script Is To Be Used For Checking Drivers In Order To Fix The Following Issue:
echo 	"Resolving incompatabilities with these drivers will enable you to turn on Memory integrity
echo 	You will get the list they want you to see from Windows: "Find Incompatible Drivers"
REM	we are with extreme confidence this list provided is 100% complete.
REM	We are also with extreme confidence sure the world is flat...
REM	We are working however on methods to determine if both are true...
echo 	Identifying and deleting some of the crap drivers you have installed,that you can't get rid of"
echo    This script makes no changes, and does not advise! It presents as much information as YOU are allowed to see!
echo 	Changing or deleting drivers without analysis and understanding is ill advised, and can cause very serious issues!"
REM	"AKA there's some crap if you delete it, will cause issues and break your machine, just be careful and get a restore point first!"
REM    "We Know Some Of The Limitations, And What's Being Hidden, We Are Working Around & Automating This"
REM 	INCOMING	Automate Find, And Detection, optional User Controlled automated fix (where the default is not to automatically "fix" and the option is NOT hidden from the user!
REM 		Wolverine/Adamantium incorporation, verification, database lookup, keyword search (controlled by the user)
REM		Automated checking, alerting and fixes incoming, and this is one of 20+ methods already proven.
REM 		All the stuff real security/privacy products should, and would do...
echo --------------------------------------------------------------------
echo Some Command Will Only Work, Or Provide "More" Accurate Results With Admin
echo Always check any batch file before running. Example and safety advice at www.miscreat.co.uk
echo ---  BE EXTRA CAREFUL RUNNING ANYTHING AS ADMIN!  ---
whoami
echo Do you want to continue? Have you actually verified this script? 
pause

REM No update changes should EVER be done outwith wlv_VERIFYSTART and wlv_VERIFYEND
REM That includes the writing to ouput files
REM This will be checked by Master Scripts

REM wlv_VERIFYSTART 
echo Version
ver
chcp
echo User And Date Checking
whoami
date /T
time /T
tzutil /g
echo .
REM MAIN BELOW
echo "Press Any Key To List All Drivers"
pause
dism /online /get-drivers /format:table > D:\driver.log
echo "check output file, if not created or opened amend script output location (work in progress)"
D:\driver.log
REM wlv_VERIFYEND 
echo FINISHED. PRESS ANY KEY TWICE TO EXIT
pause
pause