function [Efficiency, H, L, R] = findEfficiency(p, name, encoded)
    global CODE
    L = 0;
    H = 0;
    for itr1 = 1: length(CODE)
        L = L + (p(itr1)*length(CODE{itr1}));
        H = H - (p(itr1)*log2(p(itr1)));
    end
    
    Efficiency = H/L;
    R = 1- Efficiency;
    
    disp('Original Text: '+ string(name))
    disp('Encoded Text (Character wise): '+ string(encoded))
    disp('')
    disp('Average Codeword Length (L): '+ string(L))
    disp('Entrophy: '+ string(H))
    disp('Efficiency: '+ string(Efficiency))
    
    
end