t = [2;3;4;4;5;6;4;4;5;5;6;5;5;6;7;6;6;6;7;7;6;7;6;7;7;7;8;7;7;7;7;7;7;7;7;7;7;7;7];
mkdir('P:\\Insung\\recon_singlecrystal18090\\');
mkdir('P:\\Insung\\recon_singlecrystal9075\\');
% no velocity data, time step 20s
for i = 176:176
    fprintf('%d\n', i);
    load(sprintf('P:\\Insung\\separate_singlecrystal\\%d_volume_separated\\crystal_reduced_.mat',i));
    splitpatch = splitFV(FV222);
    splitpatch2 = splitpatch(t(i-137));
    
    patch(splitpatch2, 'facecolor', 'red', 'edgecolor', 'none');
    axis equal; axis off; camlight headlight;
    view([180 90])
    xlim([430 750]); ylim([80 400]); zlim([0 250]);
    
%     saveas(gcf, sprintf('P:\\Insung\\recon_singlecrystal18090\\%d.png',i));
%     view([90 75])
%     saveas(gcf, sprintf('P:\\Insung\\recon_singlecrystal9075\\%d.png',i));
%     close all;
end