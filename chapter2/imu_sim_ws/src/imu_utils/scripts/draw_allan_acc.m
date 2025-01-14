clear 
close all

dt = dlmread('../data2/data_A3_acc_t.txt');         
data_x = dlmread('../data2/data_A3_acc_x.txt'); 
data_y= dlmread('../data2/data_A3_acc_y.txt'); 
data_z = dlmread('../data2/data_A3_acc_z.txt'); 
data_draw=[data_x data_y data_z] ;

data_sim_x= dlmread('../data2/data_A3_sim_acc_x.txt'); 
data_sim_y= dlmread('../data2/data_A3_sim_acc_y.txt'); 
data_sim_z= dlmread('../data2/data_A3_sim_acc_z.txt'); 
data_sim_draw=[data_sim_x data_sim_y data_sim_z] ;


figure
loglog(dt, data_draw , 'o');
% loglog(dt, data_sim_draw , '-');
xlabel('time:sec');                
ylabel('Sigma:deg/h');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(dt, data_sim_draw , '-');
