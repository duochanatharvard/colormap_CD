% col = detailCD(num,name)
% 
% detailCD returns single-hue colormaps, the default is red
% inputs are:
% - num: number of colors in each hue
% - name:  "double" for positive and negative values
%
% Last update: 2018-08-14

function col = detailCD(num,name)

    % *********************************************************************
    % Parse input arguments
    % ********************************************************************* 
    if ~exist('num','var')  num = 12; end
    if ~exist('num_hue','var')  num_hue = 6;  end
    if ~exist('name','var') name = 'single'; end 

    % *********************************************************************
    % Generate colormap
    % *********************************************************************
    switch name,
        case 'single',
            col = colormap_CD([5/6 0 0.12 1/3 1/2 2/3]',[0.9 .35],[0 0 0 0 0 0],num);
        case 'double',
            col_1 = colormap_CD([5/6 0 .12]',[0.4 .9],[0 0 0 0 0 0],num);
            col_2 = colormap_CD([1/3 1/2 2/3]',[0.9 .4],[0 0 0 0 0 0],num);   
            col = [col_1; col_2];
            colormap(gca, col);
    end
end


