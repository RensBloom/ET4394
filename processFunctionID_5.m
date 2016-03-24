function [ output_args ] = processFunctionID_5( functionIDs, functionNames, dataStream )
    %Select
    functionID_index = 5;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
end

