% col = hotCD(num,hue)
% 
% hotCD returns single-hue colormaps, the default is red
% 
% can take in an argument to adjust for hues
% 'r': red
% 'y': yellow
% 'g': green
% 'c': cyan
% 'b': blue
% 'm': magenta
% 'gry': gray
%
% Last update: 2018-08-14

function col = hotCD(num,hue)
    
    % *********************************************************************
    % Parse input arguments
    % ********************************************************************* 
    if ~exist('num','var')  num = 12; end
    if ~exist('hue','var') name = 'r'; end 

    % *********************************************************************
    % Generate colormap
    % *********************************************************************
    switch hue,
        case 'r',
            col = colormap_CD([0.25 0.9],[1 .35],[0],num);
        case 'y',
            col = colormap_CD([1/6 0.1],[1 .2],[0],num);
        case 'g',
            col = colormap_CD([0.3 0.45],[1 .2],[0],num);
        case 'c',
            col = colormap_CD([0.52 0.48],[1 .2],[0],num);
        case 'b',
            col = colormap_CD([0.5 0.65],[1 .25],[0],num);
        case 'p',
            col = colormap_CD([1 0.8],[1 .2],[0],num);
        case 'gry',
            col = colormap_CD([1 0.8],[1 .2],[1],num);
    end
end