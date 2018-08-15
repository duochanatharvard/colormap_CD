% col = g2rCD(num,name)
% 
% g2rCD returns gray to red colormap
% col = colormap_CD([ 0.45 0.7; 0.08 0.95],[1 .35],[1 0],num);
%
% Can be modified to be other maps, or using argument "name": 
%
% 's2g': silver to gold colormap 
% col = colormap_CD([ 0.45 0.7; 0.10 0.08],[1 .35],[1 0],6);
%
% 'g2b': gray to blue colormap
% col = colormap_CD([ 0.45 0.7; [0.10 0.24]+0.4],[1 .35],[1 0],6);
% 
% Last update: 2018-08-14

function col = g2rCD(num,name)
    
    % *********************************************************************
    % Parse input arguments
    % ********************************************************************* 
    if ~exist('num','var')  num = 6; end
    if ~exist('name','var') name = 'g2r'; end

    % *********************************************************************
    % Generate colormap
    % ********************************************************************* 
    switch name,
        case 'g2r',
            col = colormap_CD([ 0.08 0.95; 0.08 0.95],[1 .35],[1 0],num);
        case 's2g',
            col = colormap_CD([ 0.10 0.08; 0.10 0.08],[1 .20],[1 0],num);
        case 'g2b',
            col = colormap_CD([ 0.40 0.64; 0.40 0.64],[1 .28],[1 0],num);
    end

end