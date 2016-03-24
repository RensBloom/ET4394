function [ output_args ] = processFunctionID_6( functionIDs, functionNames, dataStream )
    %reserved
    functionID_index = 6;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
end

