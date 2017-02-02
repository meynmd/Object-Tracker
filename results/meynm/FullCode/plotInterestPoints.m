function p = plotInterestPoints(file)
    img = imread(file);
    img = rgb2gray(img);
    %p = detectSURFFeatures(img);
    p = detectSURFFeatures(img, 'MetricThreshold', 7500.0);
    imshow(img);
    hold on;
    plot(p.selectStrongest(100));
end