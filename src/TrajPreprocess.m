clc;
clear all;

load('..\data\nlc_data_5zones.mat')
load('..\data\lc_data_20s_withpoints.mat')

% transfer to related coordinate, in terms of the host
%%% for the lc_data
r_lc_data = {};

Label = [points; 600*ones(length(nlc_data),2)];


for i = 1: length(lc_data)
    trajs = lc_data{i};
    origin_x = trajs.veh_s.x(1);
    origin_y = trajs.veh_s.y(1);
    
    
    R_trajs.veh_s_x = trajs.veh_s.x(1:100) - origin_x;
    R_trajs.veh_s_y = trajs.veh_s.y(1:100) - origin_y;
    Label(i,1) = trajs.veh_s.y(points(i,1)) - origin_y;
    Label(i,2) = trajs.veh_s.y(points(i,2)) - origin_y;
    
    
    da = [];


    if (trajs.veh_r.x(1) ~= 10000)
        R_trajs.veh_r_x = trajs.veh_r.x(1:100) - origin_x;
        R_trajs.veh_r_y = trajs.veh_r.y(1:100) - origin_y;
    else
        R_trajs.veh_r_x = 0*trajs.veh_r.x(1:100);
        R_trajs.veh_r_y = 0*trajs.veh_r.y(1:100);
    end
    if (trajs.veh_f.x(1) ~= 10000)
        R_trajs.veh_f_x = trajs.veh_f.x(1:100) - origin_x;
        R_trajs.veh_f_y = trajs.veh_f.y(1:100) - origin_y;
    else
        R_trajs.veh_f_x = 0*trajs.veh_f.x(1:100);
        R_trajs.veh_f_y = 0*trajs.veh_f.y(1:100);
    end

    
    if (trajs.veh_rt.x(1) ~= 10000)
        R_trajs.veh_rt_x = trajs.veh_rt.x(1:100) - origin_x;
        R_trajs.veh_rt_y = trajs.veh_rt.y(1:100) - origin_y;
    else
        R_trajs.veh_rt_x = 0*trajs.veh_rt.x(1:100);
        R_trajs.veh_rt_y = 0*trajs.veh_rt.y(1:100);
    end

    
    if (trajs.veh_ft.x(1) ~= 10000)
        R_trajs.veh_ft_x = trajs.veh_ft.x(1:100) - origin_x;
        R_trajs.veh_ft_y = trajs.veh_ft.y(1:100) - origin_y;
    else
        R_trajs.veh_ft_x = 0*trajs.veh_ft.x(1:100);
        R_trajs.veh_ft_y = 0*trajs.veh_ft.y(1:100);
    end
    
    if isfield(trajs, 'veh_st') && (trajs.veh_st.x(1) ~= 10000)
        R_trajs.veh_st_x = trajs.veh_st.x(1:100) - origin_x;
        R_trajs.veh_st_y = trajs.veh_st.y(1:100) - origin_y;
    else
        R_trajs.veh_st_x = 0*trajs.veh_ft.x(1:100);
        R_trajs.veh_st_y = 0*trajs.veh_ft.y(1:100);
    end
    
    da = [da;R_trajs.veh_s_x(end-19:end-10) ];
    da = [da;R_trajs.veh_f_x(end-19:end-10) ];    
    da = [da;R_trajs.veh_rt_x(end-19:end-10) ];    
    da = [da;R_trajs.veh_ft_x(end-19:end-10) ];
    da = [da;R_trajs.veh_st_x(end-19:end-10) ];
   
    
    
   
    
    r_lc_data{i}=R_trajs;
end

r_nlc_data = {};
for i = 1: length(nlc_data)
    da = [];
    trajs = nlc_data{i};
    origin_x = trajs.veh_s.x(1);
    origin_y = trajs.veh_s.y(1);
    
    R_trajs.veh_s_x = trajs.veh_s.x - origin_x;
    R_trajs.veh_s_y = trajs.veh_s.y - origin_y;
    
    if (trajs.veh_r.x(1) ~= 10000)
        R_trajs.veh_r_x = trajs.veh_r.x - origin_x;
        R_trajs.veh_r_y = trajs.veh_r.y - origin_y;
    else
        R_trajs.veh_r_x = 0*trajs.veh_r.x;
        R_trajs.veh_r_y = 0*trajs.veh_r.y;
    end
    
    if (trajs.veh_f.x(1) ~= 10000)
        R_trajs.veh_f_x = trajs.veh_f.x - origin_x;
        R_trajs.veh_f_y = trajs.veh_f.y - origin_y;
    else
        R_trajs.veh_f_x = 0*trajs.veh_f.x;
        R_trajs.veh_f_y = 0*trajs.veh_f.y;
    end
    
    if (trajs.veh_rt.x(1) ~= 10000)
        R_trajs.veh_rt_x = trajs.veh_rt.x - origin_x;
        R_trajs.veh_rt_y = trajs.veh_rt.y - origin_y;
    else
        R_trajs.veh_rt_x = 0*trajs.veh_rt.x;
        R_trajs.veh_rt_y = 0*trajs.veh_rt.y;
    end
    
    if (trajs.veh_ft.x(1) ~= 10000)
        R_trajs.veh_ft_x = trajs.veh_ft.x - origin_x;
        R_trajs.veh_ft_y = trajs.veh_ft.y - origin_y;
    else
        R_trajs.veh_ft_x = 0*trajs.veh_ft.x;
        R_trajs.veh_ft_y = 0*trajs.veh_ft.y;
    end
    
    if isfield(trajs, 'veh_st') && (trajs.veh_st.x(1) ~= 10000)
        R_trajs.veh_st_x = trajs.veh_st.x - origin_x;
        R_trajs.veh_st_y = trajs.veh_st.y - origin_y;
    else
        R_trajs.veh_st_x = 0*trajs.veh_ft.x;
        R_trajs.veh_st_y = 0*trajs.veh_ft.y;
    end
    da = [da;R_trajs.veh_s_x(end-19:end-10) ];
    da = [da;R_trajs.veh_f_x(end-19:end-10) ];    
    da = [da;R_trajs.veh_rt_x(end-19:end-10) ];    
    da = [da;R_trajs.veh_ft_x(end-19:end-10) ];
    da = [da;R_trajs.veh_st_x(end-19:end-10) ];
    
   
    r_nlc_data{i}=R_trajs;
end

save('../data/processed_relative.mat','Label','r_lc_data','r_nlc_data')




