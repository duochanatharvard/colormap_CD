function col = jetCD(num)
    
    if ~exist('num','var') num = 6; end
    col = colormap_CD([0.45 0.70; 0.25 0.9],[0.7 0.35],[0 0],num);

end