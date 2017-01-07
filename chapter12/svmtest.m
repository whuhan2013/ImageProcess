load fisheriris;
data = [meas(:,1),meas(:,2)];    
groups = ismember(species,'setosa');    

[train,test] = crossvalind('holdOut',groups);

svmStruct = svmtrain(data(train,:),groups(train),'showplot',true);

classes = svmclassify(svmStruct,data(test,:),'showplot',true);

nCorrect = sum(classes == groups(test));    
accuracy = nCorrect/length(classes);

