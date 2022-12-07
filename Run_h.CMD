
setLocal EnableDelayedExpansion 
mkdir "Results_SLiM\Hybridization\mu1.0e-05 r1.0e-06"
set /a selfp1=0
set /a selfp2=10
set /a selfph=10
set /a it=100
set /a itGroup=4

set tBurn[1]=1002
set tBurn[2]=10002
set tBurn[3]=50002


for /l %%j in (1,1,3) do (
	for /l %%i in (1,1,%itGroup%) do (
		start /b ParallelRuns_Hybridization.bat %%i 1.0e-05 1.0e-06 %selfp1% %selfp2% %selfph% !tBurn[%%j]! %it% %itGroup%;
	)
)
