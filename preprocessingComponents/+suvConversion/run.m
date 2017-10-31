function [ out ] = run( inputs )
%RUN Run SUV conversion pre-processing module

    %% Initialization
    intensityVOI = inputs.intensityVOI;
    infoVOI = inputs.infoVOI;
        
    %% Calculate New Image
    try
        [newVOI, newInfoVOI] = convertToSUV(intensityVOI, infoVOI); 
    catch E
        logger('WARN', ['Could not complete Preprocessing component suvConversion: ' E.message]);
        
        % Return original image
        out = { ... 
            struct(...
                'name', 'intensityVOI',...
                'value', intensityVOI ...
            )
            struct(...
                'name', 'infoVOI',...
                'value', {infoVOI} ...
            )
        };
       return
    end
            
    %% Return New Image
    out = { ... 
        struct(...
            'name', 'intensityVOI',...
            'value', newVOI ...
        )
        struct(...
            'name', 'infoVOI',...
            'value', {newInfoVOI} ...
        )
    };
end
