function [ tagLength ] = getTagLength( tag_data )

    tagLength = 1;
    
    while ( tag_data( tagLength + 1 ) ~= -9  )
        tagLength = tagLength + 1;
    end
    
end

