function [ output_args ] = processFunctionID_8( functionIDs, functionNames, dataStream )
    %ReqRN
    functionID_index = 8;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
    index = tagLength + 1;
    
    local_length = 16;
    RN = dataStream(index:index+local_length-1)
end

