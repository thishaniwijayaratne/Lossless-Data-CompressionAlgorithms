function makecode(s, encodeRecursion)

    global CODE
    
    if isa(s,'cell')        % Checking if s is of type cell
        makecode(s{1},[encodeRecursion 0]);     % First element of s is encoded again
        makecode(s{2}, [encodeRecursion 1]);    % Second element of s is encoded again
        
    else
        CODE{s} = char('0' + encodeRecursion);  % If pairs of symbols done encoding,  
    end
    %{
    

    global CODE;
    if not(iscell(s{1}))
        if isempty(encodeRecursion)
            CODE{s{1}} = 0;
        else
            CODE{s{1}} = {encodeRecursion, 0};
        end
    else
        if isempty(encodeRecursion)
            temp_1 = 0;
        else
            temp_1 = {encodeRecursion, 0};
        end
        makecode(s{1}, temp_1)
    end
    
    if not(iscell(s{2}))
        if isempty(encodeRecursion)
            CODE{s{2}} = 1;
        else
            CODE{s{2}} = {encodeRecursion, 1};
        end
    else
        if isempty(encodeRecursion)
            temp_2 = 1;
        else
            temp_2 = {encodeRecursion, 1};
        end
        makecode(s{2}, temp_2)
    end
    %}
end