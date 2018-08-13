function col = hotCD(num,rev)
    
    if ~exist('num','var') num = 12; end
    if ~exist('rev','var') rev = 0; end    
    
    if rev == 0,
        col = colormap_CD([0.25 0.9],[1 .35],[0],num);
    else
        col = colormap_CD([0.9 0.25],[0.35 1],[0],num); 
    end

end