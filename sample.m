clear;

for case_id = 14:22
    switch case_id,
        case 1,
            col = colormap_CD([0.16  0.89;],[1 0.3],[0 0],12);
            colormap_name = 'hot';
        case 2,
            col = colormap_CD([0.45 0.70; 0.25 0.9],[0.7 0.35],[0 0],6);
            colormap_name = 'jet';
        case 3,
            col = colormap_CD([ 0.45 0.7; 0.08 0.95],[1 .35],[0 0],6);
            colormap_name = 'b2r';
        case 4,
            col = colormap_CD([.96 .16],[.3 .8],[0 0],12);
            colormap_name = 'autumn';
        case 5,
            col = colormap_CD([0 1/6 1/3 2/3 5/6 1]',[0.9 .35],[0 0 0 0 0 1],5);
            colormap_name = 'detail';
        case 6,
            col = colormap_CD([ 0.45 0.7; 0.08  .95],[.95 .35],[1 0],8);
            col = col([1:8 10:2:end],:);
            colormap_name = 'k2r';
        case 7,
            col = g2rCD(6);
            colormap_name = 'g2rCD';
        case 8,
            col = g2rCD(6,'s2g');
            colormap_name = 'g2rCD_s2g';
        case 9,
            col = g2rCD(6,'g2b');
            colormap_name = 'g2rCD_g2b';
        case 10,
            col = b2rCD(6);
            colormap_name = 'b2rCD';
        case 11,
            col = b2rCD(6,'precip');
            colormap_name = 'b2rCD_precip';
        case 12,
            col = jetCD(6);
            colormap_name = 'jetCD';     
        case 13,
            col = jetCD(6,'season');
            colormap_name = 'jetCD_season'; 
        case 14,
            col = hotCD(12);
            colormap_name = 'hotCD';  
        case 15,
            col = hotCD(12,'y');
            colormap_name = 'hotCD_y';
        case 16,
            col = hotCD(12,'g');
            colormap_name = 'hotCD_g';
        case 17,
            col = hotCD(12,'c');
            colormap_name = 'hotCD_c';    
        case 18,
            col = hotCD(12,'b');
            colormap_name = 'hotCD_b';  
        case 19,
            col = hotCD(12,'m');
            colormap_name = 'hotCD_m';  
        case 20,
            col = hotCD(12,'gry');
            colormap_name = 'hotCD_gry';   
        case 21,
            col = detailCD(6);
            colormap_name = 'detailCD';  
        case 22,
            col = detailCD(6,'double');
            colormap_name = 'detailCD_double'; 
    end

    figure(1); clf; hold on;
    for i = 1:size(col,1)
        patch([0 1 1 0]+i,[0 0 1 1],col(i,:),'linest','none');
    end
    plot([1 i+1 i+1 1 1],[0 0 1 1 0],'k-','linewi',2)
    set(gcf,'position',[1 10 14 1],'unit','inches');
    set(gcf,'position',[1 10 14 1],'unit','inches');
    set(gcf,'color','w')
    axis off
    set(gcf, 'PaperPositionMode','auto');
    print(gcf,'-dpng','-r300',['demo/',colormap_name,'_colorbar.png'])
end

if 0,
    figure(2); clf;
    z = peaks;
    z = z/8*6;

    for ct = 1:2
        subplot(1,2,ct);hold on;
        contourf(z,[-6:1/5:6],'linest','none');
        colorbar;
        caxis([-6 6])
        axis off
        plot([1 49 49 1 1],[1 1 49 49 1],'k-','linewi',2)
        set(gca,'fontsize',18)
        daspect([1 1 1])
        if ct == 1,
           title('Before')
           switch case_id,
               case 1,
                   colormap(gca,flipud(hot(12))); 
               case 2,
                   colormap(gca,jet(12)); 
               case 3,
                   temp = [repmat([0:1/5:1]',1,2) ones(6,1); ...
                           ones(6,1) repmat([1:-1/5:0]',1,2) ];
                   colormap(gca,temp); 
               case 4,
                   colormap(gca,autumn(12)); 
               case 5,
                   colormap(gca,lines(30)); 
               case 6,
                   colormap(gca,pink(12));
           end

        else
           title('After')
           colormap(gca,col);
        end
    end
    set(gcf,'position',[1 10 14 5],'unit','inches');
    set(gcf,'position',[1 8 14 7],'unit','inches');
    set(gcf,'color','w')
    set(gcf, 'PaperPositionMode','auto');
    print(gcf,'-dpng','-r300',['demo/',colormap_name,'_compare.png'])
end