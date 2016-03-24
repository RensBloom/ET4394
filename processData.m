function [ output ] = processData( dataStream )
%init function names/ID
functionNames{1} = 'QueryRep';
functionIDs(1,:) = [ +0 +0 -9 -9 -9 -9 -9 -9 -9 ];
functionNames{2} = 'ACK';
functionIDs(2,:) = [ +0 +1 -9 -9 -9 -9 -9 -9 -9 ];
functionNames{3} = 'Query';
functionIDs(3,:) = [ +1 +0 +0 +0 -9 -9 -9 -9 -9 ];
functionNames{4} = 'QueryAdjust';
functionIDs(4,:) = [ +1 +0 +0 +1 -9 -9 -9 -9 -9 ];
functionNames{5} = 'Select';
functionIDs(5,:) = [ +1 +0 +1 +0 -9 -9 -9 -9 -9 ];
functionNames{6} = 'reserved';
functionIDs(6,:) = [ +1 +0 +1 +1 -9 -9 -9 -9 -9 ];
functionNames{7} = 'NAK';
functionIDs(7,:) = [ +1 +1 +0 +0 +0 +0 +0 +0 -9 ];
functionNames{8} = 'Req_RN';
functionIDs(8,:) = [ +1 +1 +0 +0 +0 +0 +0 +1 -9 ];
functionNames{9} = 'Read';
functionIDs(9,:) = [ +1 +1 +0 +0 +0 +0 +1 +0 -9 ];
functionNames{9} = 'Write';
functionIDs(9,:) = [ +1 +1 +0 +0 +0 +0 +1 +1 -9 ];

numberOfFunction = length(functionNames);
functionID_index = getFunctionID( dataStream, functionIDs );

if (functionID_index > 0)
    functionID = functionIDs( functionID_index, : );

    if functionID_index == 1 
        processFunctionID_1(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 2
        processFunctionID_2(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 3
        processFunctionID_3(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 4
        processFunctionID_4(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 5
        processFunctionID_5(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 6
        processFunctionID_6(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 7
        processFunctionID_7(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 8
        processFunctionID_8(functionIDs, functionNames, dataStream);
    end

    if functionID_index == 9
        processFunctionID_9(functionIDs, functionNames, dataStream);
    end
else
    disp('failed to recognize functionID:')
    functionID = dataStream
    
end
end
