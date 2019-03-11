function Cp = get_Cp(T)
%For Hydrogen Gas
R = 8.314; %J?K?1?mol?1
A = 3.249;
B = 0.422 * 10^(-3);
D = 0.083 * 10^5;
Cp = R * (A + B*T + D*T^(-2));
end