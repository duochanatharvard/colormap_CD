clear;
figure(1); clf; hold on;

for ct = 0:0.02:1
    
    col = colormap_CD([0.501 1;0.499 0;],[0 0]+ct,[0 0],25);
    col2 = CDF_colormap([0 1],[0 0]+ct,[1 1],50,0);

    colormap_name = 'reference';
    
    subplot(1,2,1); hold on
    for i = 1:size(col,1)
        patch([0 1 1 0]+i,[0 0 1 1]+ct*50+1,col(i,:),'linest','none');
    end

    subplot(1,2,2); hold on
    for i = 1:size(col,1)
        patch([0 1 1 0]+i,[0 0 1 1]+ct*50+1,col2(i,:),'linest','none');
    end
end

for i = 1:2
    subplot(1,2,i); hold on
    plot([1 50+1 50+1 1 1],[1 1 51 51 1],'k-','linewi',2)
    axis([1 51 1 51])
    set(gca,'xtick',[1:10:51],'xticklabel',[0:0.2:1]);
    set(gca,'ytick',[1:10:51],'yticklabel',[0:0.2:1]);
    xlabel('Hue')
    ylabel('Brightness')
    daspect([1 1 1])
    axis on;
    set(gca,'fontsize',18)
    if i == 1,
        title('Color palette used in this toolbox')
    else
        title('Color palette when saturation equals to one')
    end
end
set(gcf,'position',[1 5 18 8],'unit','inches');
set(gcf,'position',[1 5 18 8],'unit','inches');
set(gcf,'color','w')

set(gcf, 'PaperPositionMode','auto');

print(gcf,'-dpng','-r300',['demo/',colormap_name,'.png'])