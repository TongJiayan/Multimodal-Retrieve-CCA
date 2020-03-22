function [factor, lamda] = set_parameters(config)
    dataset = config.general.dataset;
    algo = config.general.algorithm;
    with_PCA = config.general.pca;
    if strcmp(dataset,'PASCAL')
        switch algo
            case 'CCA'
                if with_PCA
                    factor = 6;
                    lamda = 1;
                else
                    factor = 13;
                    lamda = 1;
                end
            case 'PLS'
                if with_PCA
                    factor = 11;
                    lamda = 1;
                else
                    factor = 63;
                    lamda = 1;
                end
            case 'BLM'
                if with_PCA
                    factor = 9;
                    lamda = 150;
                else
                    factor = 61;
                    lamda = 200;
                end
            case 'GMMFA'
                if with_PCA
                    factor = 9;
                    lamda = 1;
                else
                    factor = 57;
                    lamda = 10;
                end
        end
    elseif strcmp(dataset,'WIKI')
        switch algo
            case 'CCA'
                if with_PCA
                    factor = 5;
                    lamda = 1;
                else
                    factor = 13;
                    lamda = 1;
                end
            case 'PLS'
                if with_PCA
                    factor = 8;
                    lamda = 1;
                else
                    factor = 14;
                    lamda = 1;
                end
            case 'BLM'
                if with_PCA
                    factor = 26;
                    lamda = 3;
                else
                    factor = 13;
                    lamda = 2;
                end
            case 'GMMFA'
                if with_PCA
                    factor = 6;
                    lamda = 1;
                else
                    factor = 6;
                    lamda = 1;
                end
        end        
    else
        disp('The dataset should be WIKI or PASCAL.');
    end
end

