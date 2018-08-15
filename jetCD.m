% col = jetCD(num,varargin)
% 
% jetCD returns rainbow colormap
% col = colormap_CD([0.45 0.70; 0.25 0.9],[0.7 0.35],[0 0],num);
%
% Can be modified to be other maps, or using argument "name": 
%
% 'season': The two ends are blue (DJF), and middle is orange (JJA)
% col = colormap_CD([0.12 0.68; 0.18 0.63],[0.65 0.45],[0 0],num);
%
% Last update: 2018-08-14

function col = jetCD(num,name)

    % *********************************************************************
    % Parse input arguments
    % ********************************************************************* 
    if ~exist('num','var')  num = 6; end
    if ~exist('name','var') name = 'jet'; end

    % *********************************************************************
    % Generate colormap
    % *********************************************************************
    switch name,
        case 'jet',
            col = colormap_CD([0.45 0.70; 0.25 0.9],[0.7 0.35],[0 0],num);
        case 'season',
            col = colormap_CD([0.12 0.68; 0.18 0.63],[0.65 0.45],[0 0],num);
    end

end