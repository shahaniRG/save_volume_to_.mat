for i = 138:178
    fprintf('%d\n', i);
    mkdir(sprintf('P:\\Insung\\reshape_for_singlecrystal\\%d\\', i));
    Vol = zeros(1901, 1951, 770);
    for k = 15:784
        %Vol(:,:,-(k-785)) = double(imread(sprintf('P:\\Insung\\segmentation files_gamma6\\%d_segmentation\\%d.tiff', i, k)));
        Vol(:,:,k-14) = double(imread(sprintf('P:\\Insung\\segmentation files_gamma6\\%d_segmentation\\%d.tiff', i, k)));   
    end 
    
    for j = 50:1770
        AAA = reshape(Vol(j,:,:),1951,770);
        A4 = imrotate(AAA,270);
        imwrite(A4, sprintf('P:\\Insung\\reshape_for_singlecrystal\\%d\\%d.tiff', i,j), ...
            'compression', 'none');
    end
    
end
    %50 1770