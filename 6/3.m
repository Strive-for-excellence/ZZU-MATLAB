% F(s) = (s^3+5*s^2+9s+7)/(s^2+3s+2);
syms s;
F = (s*s*s+5*s*s+9*s+7)/(s*s+3*s+2);
ilaplace(F)
