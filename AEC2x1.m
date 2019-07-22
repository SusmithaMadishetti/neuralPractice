% Set layer sizes
hiddenSize1 = 10;

% ------------------------------- %
aec = feedforwardnet(hiddenSize1);
aec.trainFcn = 'trainscg';
aec.trainParam.epochs = 400;

aec.inputs{1}.processFcns = {};
aec.outputs{2}.processFcns = {};

aec.layers{1}.transferFcn = 'logsig';
aec.layers{2}.transferFcn = 'logsig';

aec.divideFcn = 'dividetrain';

view(aec)