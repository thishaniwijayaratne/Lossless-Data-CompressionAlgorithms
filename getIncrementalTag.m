function getIncrementalTag(sequence)
    global MSB
    global incrementalUpperLimit
    global incrementalLowerLimit
    global incrementalTag
    global Fx
    
    lowTemp = incrementalLowerLimit + ((incrementalUpperLimit - incrementalLowerLimit)*Fx(sequence(1)+1));
    upTemp = incrementalLowerLimit + ((incrementalUpperLimit - incrementalLowerLimit)*Fx(sequence(1)+2));
    
    while ((upTemp < 0.5) || (lowTemp > 0.5))
        if (upTemp<0.5)
            lowTemp = 2 * lowTemp;
            upTemp = 2 * upTemp;
            MSB = [MSB '0'];
        elseif (lowTemp>0.5)
            lowTemp = 2 * (lowTemp - 0.5);
            upTemp = 2 * (upTemp - 0.5);
            MSB = [MSB '1'];
        end
    end
    
    incrementalUpperLimit = upTemp;
    incrementalLowerLimit = lowTemp;
    
    sequence(1) = [];
    if isempty(sequence)
        incrementalTag = (incrementalUpperLimit + incrementalLowerLimit)/2;
    else
        getIncrementalTag(sequence)
    end
end




