function printFigure(EGM,name_of_figrue)
    % printFigure   EGM method for printing and saving the current figure.
    % egm.printFigure('myFigure') print the current figure as
    % 'myFigure.eps','myFigure.png'.
    % See also EGM,learningCurve,controlLandscape.


    %% Parameters
    RunSaveName = EGM.param.runName;
    FigPath = ['save_runs/',RunSaveName,'/Figures/',name_of_figrue];
    
    %% Test
    if exist([FigPath,'.eps'],'file')
        error('This file name already exist')
    end
    
    %% Print
    print([FigPath,'.eps'],'-depsc','-tiff','-r600') 
    print([FigPath,'.png'],'-dpng','-r600') 

end