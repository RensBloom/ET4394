function [ output_args ] = processFunctionID_1( functionIDs, functionNames, dataStream )
%QueryRep
    functionID_index = 1;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
    index = tagLength + 1;        
    local_length = 2;
    session = dataStream(index:index+local_length-1);
    index = index + local_length;
    
    if ( session == [ 0 0 ] ) 
        'S0'
    elseif( session == [ 0 1 ] )
        'S1'
    elseif( session == [ 1 0 ] )
        'S2'
    elseif( session == [ 1 1 ] )
        'S3'
    end

end

