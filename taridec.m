function [ bitstream ] = taridec( data, threshold, tari_threshold, start_threshold )
    %Waveform part decode with tari encoding
    %s = conv([1 1 1], data); %moving average (if needed)
    s = data;
    d = (s > threshold);
    t = 0;
    u = 0;
    bitstream = [];
    for i=1:length(d)
        if d(i) ~= t
            t = d(i);
            if d(i) == 1
                u = i;
            else
                if i - u > tari_threshold
                    if i - u > start_threshold
                        if length(bitstream) <3
                            bitstream = [];
                        end
                    else
                        bitstream = [bitstream 1];
                    end
                else
                    bitstream = [bitstream 0];
                end        
            end
        end
    end

end

