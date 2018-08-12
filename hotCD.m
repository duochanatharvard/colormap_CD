function col = hotCD(num)
    
    if ~exist('num','var') num = 12; end
    col = colormap_CD([0.25 0.9],[1 .35],[0],num);

end