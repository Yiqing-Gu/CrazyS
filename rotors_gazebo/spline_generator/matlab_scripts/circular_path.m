%% Geometric definition of path parameters

R = 1;
N_points = 4000;
hovering_height = 1;
v_magnitude = 1; % m/s

%% Vector Initialization
x = zeros(N_points,1);
y = zeros(N_points,1);
z = ones(N_points,1)*hovering_height;
vx = zeros(N_points,1);
vy = zeros(N_points,1);
vz = zeros(N_points,1);
ax = zeros(N_points,1);
ay = zeros(N_points,1);
az = zeros(N_points,1);
roll = zeros(N_points,1);
pitch = zeros(N_points,1);
yaw = zeros(N_points,1);
% w_att = ones(N_points,1);
% x_att = zeros(N_points,1);
% y_att = zeros(N_points,1);
% z_att = zeros(N_points,1);
omegax = zeros(N_points,1);
omegay = zeros(N_points,1);
omegaz = zeros(N_points,1);

for i=1:N_points
    % Position
    x(i) = R*cos(i*2*pi/N_points);
    y(i) = R*sin(i*2*pi/N_points);

    % Velocity
    vx(i) = -v_magnitude*sin(i*2*pi/N_points);
    vy(i) = v_magnitude*cos(i*2*pi/N_points);
end

T = table(x,y,z,vx,vy,vz,ax,ay,az,roll,pitch,yaw,omegax,omegay,omegaz);
writetable(T,'../data_points_files/circular_path.csv','Delimiter',',');