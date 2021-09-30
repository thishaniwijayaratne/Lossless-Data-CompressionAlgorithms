function convertBinaryIncremental(decimalPart)
    global INCREMENTAL_CODE
    multiplied = floor(decimalPart*2);
    
    INCREMENTAL_CODE = [INCREMENTAL_CODE multiplied];
    newDecimalPart = (decimalPart*2)-fix(decimalPart*2);
    if newDecimalPart>0
        convertBinaryIncremental(newDecimalPart);
    else
        INCREMENTAL_CODE = char('0' + INCREMENTAL_CODE);
        INCREMENTAL_CODE = INCREMENTAL_CODE(2:length(INCREMENTAL_CODE));
    end
    
    
end