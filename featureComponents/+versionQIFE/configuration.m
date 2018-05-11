function [c] = configuration() 
    c.configArray = {
        struct( ...
            'name', 'featureName', ...
            'value', 'QIFE Version' ...
        )
        struct( ...
            'name', 'reference', ...
            'value', '' ...
        )
        struct( ...
            'name', 'functionToRun', ...
            'value', 'run' ...
        )
    };

    c.inputArray = { 
        struct( ...
            'name', 'featureRootName', ...
            'required', true, ...
            'default', 'zz_version' ...
        ) 
        struct( ...
            'name', 'category', ...
            'required', true, ...
            'default', 'system' ...
        )      
        struct( ...
            'name', 'gitBranch', ...
            'required', true, ...
            'internal', false ...
        )
        struct( ...
            'name', 'gitHash', ...
            'required', true, ...
            'internal', false ...
        )
        struct( ...
            'name', 'dockerTag', ...
            'required', true, ...
            'internal', false ...
        )
        struct( ...
            'name', 'buildDate', ...
            'required', true, ...
            'internal', false ...
        )        
        struct( ...
            'name', 'runDate', ...
            'required', true, ...
            'internal', false ...
        )        
    };
end