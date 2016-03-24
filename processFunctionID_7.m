function [ output_args ] = processFunctionID_7( functionIDs, functionNames, dataStream )
    %NAK
    functionID_index = 7;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
end

