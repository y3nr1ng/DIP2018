%% imdilate
F = [ 
    0, 0, 0, 0, 0;
    0, 0, 1, 0, 0;
    0, 1, 1, 0, 0;
    0, 0, 1, 1, 0;
    0, 0, 0, 0, 0
];

H = [
    1, 1, 0;
    1, 1, 0;
    1, 0, 0
];

G = imdilate(F, H) %#ok<NASGU,NOPTS>

%% imerode
F = [ 
    1, 1, 1, 1, 1; 
    1, 1, 1, 1, 1; 
    1, 1, 0, 0, 0; 
    1, 1, 1, 1, 1; 
    1, 1, 1, 1, 1
];

H = [
    1, 1, 1;
    0, 0, 1;
    1, 1, 1
];

G = imerode(F, H) %#ok<NASGU,NOPTS>

%% skeletonizing
F = [
    0, 0, 0, 0, 0, 0, 0, 0, 0;
    0, 1, 1, 1, 1, 1, 1, 1, 0;
    0, 1, 1, 1, 1, 1, 1, 1, 0;
    0, 1, 1, 1, 1, 1, 1, 1, 0;
    0, 1, 1, 1, 1, 1, 1, 1, 0;
    0, 1, 1, 1, 1, 1, 1, 1, 0;
    0, 0, 0, 0, 0, 0, 0, 0, 0;
];

G = bwskel(F) %#ok<NOPTS>
