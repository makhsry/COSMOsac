function [POSXA POSYA POSZA RAD]=ConvertAU2A(POSXAU,POSYAU,POSZAU,Area)
% From atomic unit [au] to ANGSTROMS [A*]
PI = 3.14159265358979;
% 
POSXA=POSXAU*0.529177249;
POSYA=POSYAU*0.529177249;
POSZA=POSZAU*0.529177249;
RAD=sqrt(Area/PI);
end