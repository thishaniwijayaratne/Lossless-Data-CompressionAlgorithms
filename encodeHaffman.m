function encoded = encodeHaffman(sig, name)
    global CODE 
    encoded = '';
    for itr1 = 1:length(name)
        for itr2 = 1:length(sig)
            if name(itr1) == sig(itr2)
                encoded = [encoded CODE{itr2} ' '];
                % encoded = [encoded CODE{itr2}];
                break;
            end
        end
    end
    encoded = char(encoded(1:length(encoded)-1));
    %encoded = char(encoded);
end