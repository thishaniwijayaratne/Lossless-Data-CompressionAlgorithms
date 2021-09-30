function isConfined(lowTemp, upTemp) % Function checks whether the upper and lower limits
                      % are confined to the upper and lower regions recursively
    global MSB
    
    while (1)
        
    end
    if ((lowTemp<0.5) && (upTemp<0.5))
        lowTemp = 2 * lowTemp;
        upTemp = 2 * upTemp;
        MSB = [MSB '0'];
    elseif ((lowTemp>0.5) && (upTemp>0.5))
        lowTemp = 2 * (lowTemp - 0.5);
        upTemp = 2 * (upTemp - 0.5);
        MSB = [MSB '1'];
    end
end