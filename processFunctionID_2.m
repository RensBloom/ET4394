function [ output_args ] = processFunctionID_2( functionIDs, functionNames, dataStream )
    %ACK
    functionID_index = 2;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)

    index = tagLength + 1;
    
    local_length = 16;
    RN = dataStream(index:index+local_length-1)
    
end

