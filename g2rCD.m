function col = g2rCD(num)
    
    if ~exist('num','var') num = 6; end
    col = colormap_CD([ 0.45 0.7; 0.08 0.95],[1 .35],[1 0],num);

end