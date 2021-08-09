function J = Fluidic_pinball_problem(cylinder_actuation)
    % Fluidic pinball_problem   Evaluation function of fluidic pinball.
    % See also evaluate_group, evaluate_vertices.


    system ('rm -f Evaluate_Barrier');
%     global callRecord;
%     if exist('DataSave/costRecord.mat', 'file') == 2
%         load('DataSave/costRecord.mat')
%         [Lia,loc_P] = ismember(cylinder_actuation,costRecord(:,1:end-2),'rows');
%     else
%         costRecord = [];
%         Lia = 0;
%     end
%     if Lia
%         J = costRecord(loc_P,end-1);        
% %         drag = costRecord(loc_P,end);
%     else
%         if ~constraint(cylinder_actuation)
%             J = 100;
% %             drag = 100;
%         else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Test Function%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            
% %         output = 1 - 1 * exp(-(P(1)-1).^2 -(P(2)-1).^2)- 6/8 * exp(-(P(1)-1).^2 -(P(2)-(-1)).^2)- 5/8 * exp(-(P(1)-(-1)).^2 -(P(2)-1).^2)- 4/8 * exp(-(P(1)-(-1)).^2 - (P(2)-(-1)).^2);    
% %         drag = 0;
        
            system('touch Evaluate_Barrier');    
            cd ../
%             cd ../
            cd DNS_fluidic_pinball/
            system ('rm -f Code_Output/*');
            Control_func_input(cylinder_actuation);
            
            if (exist('Covergent_Barrier', 'file') == 2 )
                system('pkill UNS3')
                J = 100;
%                 drag = 100;
                system ('rm -f Covergent_Barrier');
            else
                PName = [num2str(cylinder_actuation(1)),'_',num2str(cylinder_actuation(2)),'_',num2str(cylinder_actuation(3))];
                system(['mv Code_Input/Restart_unsteady_T ../Output/Run_record/Restart_unsteady_T_',PName]) 
                system('mv Code_Output/* ../Output/Run_record') 
                system('cp Control_Input.dat ../Output/Run_record')
                
                cd ../
                system(['mv Output/Run_record/Control_Input.dat Output/Run_record/Control_Input_',PName,'.dat'])
                system(['mv Output/Run_record/Grid.dat Output/Run_record/Grid_',PName,'.dat'])
                system(['mv Output/Run_record/Flow.dat Output/Run_record/Flow_',PName,'.dat'])

                cd Flow_Map/
                Visualization_static(cylinder_actuation)
                saveas(gcf,['../Output/Run_record/flow_',PName,'.fig'])
                saveas(gcf,['../Output/Run_record/flow_',PName,'.png'])
                close all
                
                cd ../CostFunction
                J = Cost_Function('', PName, 50.1, 100);
%                 J = Cost_Function('',PName,400,500);
%                 
%                 cd ../Forces_Code
%                 drag = Forces('Run_record',PName,100,2)     
%                 saveas(gcf,['../Output/Run_record/force_',PName,'.fig'])
%                 saveas(gcf,['../Output/Run_record/force_',PName,'.png'])
%                 close all
%                 cd ../    
            end
            cd ../EGM_v0.1.2.4/
%         end
%         costRecord = [costRecord;cylinder_actuation J drag] ;
%     end
%     callRecord = [callRecord;cylinder_actuation J];  
%     save('DataSave/costRecord.mat','costRecord')
end

