function [EO, AEFFPRIME, RGAS, VNORM, ANORM, COMPSEG, ...
	EPS, COORD, SIGMAHB, CHB, FPOL, ALPHA, ALPHAPRIME]=paraCOSMO()
EO = 2.395e-4; % PERMITTIVITY IN A VACUUM (e**2*mol/Kcal*Angstrom)
AEFFPRIME = 7.5; % EFFECTIVE SURFACE AREA (ANGSTROMS**2) --FROM LIN
RGAS = 0.001987; % IDEAL GAS CONSTANT (Kcal/mol*K)
VNORM = 66.69;  % VOLUME NORMALIZATION CONSTANT (A**3) --FROM LIN
ANORM = 79.53; % AREA NORMALIZATION CONSTANT (A**2) --FROM LIN
COMPSEG = 51; % NUMBER OF INTERVALS FOR THE SIGMA PROFILE
EPS = 3.667; % RELATIVE PERMITTIVITY 
			% --FROM LIN (LIN AND SANDLER USE A CONSTANT FPOL WHICH YEILDS EPS=3.68)
COORD = 10.0; % THE COORIDINATION NUMBER --FROM LIN (KLAMT USED 7.2)  
SIGMAHB = 0.0084; % CUTOFF VALUE FOR HYDROGEN BONDING (e/Angstrom**2)
CHB = 85580.0; % HYDROGEN BONDING COEFFICIENT (Kcal/mole*Angstroms**4/e**2)
FPOL = (EPS-1.0)/(EPS+0.5);
ALPHA = (0.3*AEFFPRIME^(1.5))/(EO);
ALPHAPRIME = FPOL*ALPHA; % ALPHAPRIME = A CONSTANT USED IN THE MISFIT ENERGY CALCULATION
end 