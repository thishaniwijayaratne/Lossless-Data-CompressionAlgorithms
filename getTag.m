function getTag(sequence)
    global Fx
    global upperLimit
    global lowerLimit
    global Tx2
    
    lowTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(1)+1));
    upTemp = lowerLimit + ((upperLimit - lowerLimit)*Fx(sequence(1)+2));
    
    upperLimit = upTemp;
    lowerLimit = lowTemp;
    
    sequence(1) = [];
    
    if isempty(sequence)
        Tx2 = (upperLimit + lowerLimit)/2;
    else
        getTag(sequence)
    end
end