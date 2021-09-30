function Tx = generateTags(sequence)
    global Fx
    global upperLimit
    global lowerLimit
    
    for itr1 = 1:length(sequence)
               
        lowTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(itr1)+1));
        upTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(itr1)+2));
        
        upperLimit = upTemp;
        lowerLimit = lowTemp;
        
        % correct mapping for 1,2 3
        % lowTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(itr1)));
        % upTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(itr1)+1));
        
        
        
    end
    
    Tx = (upperLimit + lowerLimit)/2;
    
    

end