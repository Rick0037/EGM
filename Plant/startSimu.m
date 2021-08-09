while 1
    if exist('Evaluate_Barrier', 'file') == 2 
        system('rm -f Evaluate_Barrier');
        cd ../DNS_fluidic_pinball/
        system('./UNS3');
        cd ../EGM_v0.1.2.4/
    end
end
