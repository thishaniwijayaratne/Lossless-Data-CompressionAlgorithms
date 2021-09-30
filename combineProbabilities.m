function s = combineProbabilities(p)
    s =  cell(length(p),1);

    for itr1 = 1:length(p)
        s{itr1} = itr1;
    end
    
    while numel(s) > 2  % Until number of elements in s is reduced to 2
        [p,i] = sort(p);
        p(2) = p(1) + p(2);
        p(1) = [];
        
        s = s(i);
        s{2} = {s{1},s{2}};
        s(1) = [];
    end
    
    % [p,i] = sort(p);
    % s = s(i);
end