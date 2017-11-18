fid1 =fopen(strcat('Hernia', '.txt'),'wt');
   %fs= 'ulcer 0 0 0 %4.2f %4.2f %4.2f %4.2f 0 0 0 0 0 0 0';
   %fprintf(fid, fs, BB1,BB2,BB3,BB4);
for i=1:112120
    X=strfind(FindingLabels{i}, 'Hernia');
    Y=isempty(X);
if(Y==0)
    
    fs1=ImageIndex{i};
    fc1= ' 1';
    sr1= strcat(fs1,fc1);
    fprintf(fid1, '%s\n', sr1);

    
else
    fs2=ImageIndex{i};
    fc2= ' 0';
    sr2= strcat(fs2,fc2);
    fprintf(fid1,'%s\n', sr2);
end
end
fclose(fid1);