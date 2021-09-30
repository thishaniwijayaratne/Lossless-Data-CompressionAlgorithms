function generateFx(p)
    global Fx
    Fx = zeros(length(p)+1,1);
    
    for itr1 = 2:length(p)+1
        Fx(itr1) = Fx(itr1-1) + p(itr1-1);
    end
end