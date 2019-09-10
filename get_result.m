leng=length(prior_cloud2);
fid=fopen('./data/prior_cloud2.txt','w');
for i=1:1:leng
    fprintf(fid,'%s %s %s\n',prior_cloud2(i,1),prior_cloud2(i,2),prior_cloud2(i,3));
end
fclose(fid);
 
% leng=length(label);
% fid=fopen('./data/mincut_label1.txt','w');
% for i=1:1:leng
%     fprintf(fid,'%d\n',label(i));
% end
% fclose(fid)
% 
% leng=length(gd);
% fid=fopen('./data/gd.txt','w');
% for i=1:1:leng
%     fprintf(fid,'%d\n',gd(i));
% end
% fclose(fid);

% load('./data/prior_cloud2.mat')
%加载prior，即为每棵树的最高点

% clc;
% clear all;
% lasMatName = sprintf('./data/cloud2.las');
% s = lasread(lasMatName,'xyzirncp','double');
%     x = s.X;    y = s.Y;    z = s.Z;
%     i = s.intensity;    c = s.classification;
%     LiDAR = [x,y,z,i]; % all LiDAR points 
%     clear x y z i s
%     
% gd = LiDAR(:,3)<9; % ground point threshold 2 metres
% LiDAR(gd,:)=[];tic;
% [id, pos,Ntree]=dynamic_local_maxima_3d_new(LiDAR);
% prior_class5=pos(:,1:3);