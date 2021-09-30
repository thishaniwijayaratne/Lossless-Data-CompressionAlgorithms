function convertBinary(decimalPart)
    global CODE
    multiplied = floor(decimalPart*2);
    
    CODE = [CODE multiplied];
    newDecimalPart = (decimalPart*2)-fix(decimalPart*2);
    if newDecimalPart>0
        convertBinary(newDecimalPart);
    else
        CODE = char('0' + CODE);
        CODE = CODE(2:length(CODE));
    end
    
    
end