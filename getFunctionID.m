function [ functionID ] = getFunctionID( l_byteStream, l_functionIDs )
    functionID = -1;    

    for i = 1 : length( l_functionIDs )
        l_succes = 0;

        l_checkData = l_functionIDs( i, : );
        
        tag_length = getTagLength( l_checkData );

        if tag_length <= length( l_byteStream ) 
            l_succes = 1;
            for j = 1 : tag_length
                if l_byteStream(j) ~= l_checkData(j) 
                    l_succes = 0;
                    break
                end
            end
        end
        
        if l_succes == 1
            functionID = i;
            break
        end
    end
end

