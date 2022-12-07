mkdir "Results_SLiM\Mutation Load\mu5.0e-04 r1.0e-02"
set /a tGen=150002
set /a tDistrib=150002
set /a Npop=500
set /a Nloc=100
set /a it=20
set /a itGroup=4

for /l %%i in (1,1,%itGroup%) do (
	start /b ParallelRuns.bat %%i 5.0e-04 1.0e-02 %tGen% %Npop% %Nloc% %it% %itGroup% %tDistrib%;
)
