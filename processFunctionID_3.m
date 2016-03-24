function [ output_args ] = processFunctionID_3( functionIDs, functionNames, dataStream )
    functionID_index = 3;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
    index = tagLength + 1;
    local_length = 1;
    DR = dataStream(index:index+local_length-1);
    index = index + local_length;
    
    if ( DR == 0 ) 
        'DR=8'
    elseif( DR == 1 )
        'DR=64/3'
    end
 
    local_length = 1;
    DR = dataStream(index:index+local_length-1);
    index = index + local_length;
    
    if ( DR == 0 ) 
        'DR=8'
    elseif( DR == 1 )
        'DR=64/3'
    end
    
    local_length = 2;
    M = dataStream(index:index+local_length-1);
    index = index + local_length;
    
    if ( M == [ 0 0 ] ) 
        'M=1'
    elseif( M == [ 0 1 ] )
        'M=2'
    end

end

