
fileID = fopen('signal','r');
formatSpec = '%f';
signal = fscanf(fileID,formatSpec);

%plot(signal);
%plot(reader)

%divide into blocks
reader = 1.0*(signal < 0.5);
b = conv(ones(1, 200), reader);
reader = 1.0*(b(100:end) > 1); %1 = reader transmit, 0 = tag transmit
sender = -1;
start_block = 1;
c = 0;
for i=1:length(signal)
    if reader(i) ~= sender || i == length(signal) %end of large block
        block = signal(start_block:i);
        if length(block) > 300 % min length of data stream in samples
            c = c + 1;
            if sender == 0 %sent by tag
                data = taridec(block, 0.64, 9, 20);
                disp(strcat('Data block tag -> reader with length: ', num2str(length(data))));
                processData(data)
            elseif sender == 1 %sent by receiver
                data = taridec(block, 0.5, 40, 90);
                disp(strcat('Data block reader -> tag with length: ', num2str(length(data))));
                 processData(data)
            end
            plot(block);
            disp('---------------------------------------------')
            %pause
            sender = reader(i);
            start_block = i;
        end 
    end
end

