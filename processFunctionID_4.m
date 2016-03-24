function [ output_args ] = processFunctionID_4( functionIDs, functionNames, dataStream )
    %QueryAdjust
    functionID_index = 4;  
    functionID = functionIDs( functionID_index, : );
    tagLength = getTagLength( functionID )
    functionNames{ functionID_index }
    Command = functionID(1:tagLength)
    
end

