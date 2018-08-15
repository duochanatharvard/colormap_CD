% col = b2rCD(num,name)
% 
% b2rCD returns blue (cold) to red (warm) colormap
% col = colormap_CD([ 0.45 0.7; 0.08 0.95],[1 .35],[0 0],num);
%
% Can be modified to be other maps, or using argument "name": 
%
% 'precip': yellow (dry) to blue (wet)
% col = colormap_CD([  0.15 0.08; 0.5 0.7],[1 .3],[0 0], num);
%
% Last update: 2018-08-14

function col = b2rCD(num,name)
    
    % *********************************************************************
    % Parse input arguments
    % ********************************************************************* 
    if ~exist('num','var')  num = 6; end
    if ~exist('name','var') name = 'temp'; end

    % *********************************************************************
    % Generate colormap
    % *********************************************************************
    switch name,
        case 'temp',
            col = colormap_CD([ 0.45 0.7; 0.08 0.95],[1 .35],[0 0],num);
        case 'precip',
            col = colormap_CD([  0.15 0.08; 0.5 0.7],[1 .3],[0 0], num);
    end

end