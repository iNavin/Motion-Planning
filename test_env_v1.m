function [scenario, egoVehicle] = test_env_v1()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.14 (R2023a) and Automated Driving Toolbox 3.7 (R2023a).
% Generated on: 18-Apr-2023 11:49:47

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [50.6 100.8 0;
    253.2 99.9 0];
laneSpecification = lanespec(6);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [230.7 72.9 0;
    230.7 279.1 0];
laneSpecification = lanespec(4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [255 253 0;
    52.4 252.1 0];
laneSpecification = lanespec(6);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

%Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [56.8 106.7 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'PlotColor', [0 255 0] / 255, ...
    'Name', 'Car');

% egoVehicle = vehicle(scenario, ...
%     'ClassID', 1, ...
%     'Position', [32.5 15.5 pi/2], ...
%     'Mesh', driving.scenario.carMesh, ...
%     'PlotColor', [0 255 0] / 255, ...
%     'Name', 'Car');

% Add the non-ego actors
truck = vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [58.1 259.4 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck');
waypoints = [58.1 259.4 0;
    70.5 259.9 0;
    114.4 260.3 0;
    140.9 260.3 0;
    174.3 260.3 0;
    202.7 260.8 0;
    221 260.3 0;
    230.6 251.2 0;
    234.3 233.3 0;
    235.2 184.9 0;
    234.7 150.5 0;
    233.8 111.2 0;
    233.8 84.7 0;
    233.3 76 0];
speed = [4;4;4;4;4;4;4;4;4;4;4;4;4;4];
trajectory(truck, waypoints, speed);

car1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [58.6 94.3 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car1');
waypoints = [58.6 94.3 0;
    60.4 93.8 0;
    78.3 94.3 0;
    97 99.3 0;
    110.8 106.2 0;
    128.1 106.6 0;
    147.3 107.1 0;
    166.6 101.6 0;
    190.3 101.6 0;
    207.7 102.1 0;
    226 102.5 0;
    244.3 103 0;
    255.3 103.9 0];
speed = [9;9;9;9;9;9;9;9;9;9;9;9;9];
trajectory(car1, waypoints, speed);

truck1 = vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [130.4 95.7 0], ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Truck1');
waypoints = [130.4 95.7 0;
    151 98.4 0;
    169.3 106.2 0;
    195.8 106.2 0;
    220.1 106.2 0;
    229.7 110.7 0;
    230.1 134.5 0;
    230.1 161.1 0;
    229.2 206.8 0;
    241.6 245.7 0;
    250.3 245.7 0;
    252.6 246.1 0];
speed = [4;4;4;4;4;4;4;4;4;4;4;4];
trajectory(truck1, waypoints, speed);

car2 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [74.6 100.2 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car2');
waypoints = [74.6 100.2 0;
    91.5 100.7 0;
    129.5 103.4 0;
    150.1 102.1 0;
    162.4 97 0;
    185.8 96.6 0;
    208.2 96.6 0;
    224.2 97.5 0;
    227.4 107.1 0;
    226.9 134.5 0;
    230.1 228.8 0;
    226.9 240.7 0;
    173 248.4 0;
    135 247.5 0;
    104.8 248.4 0;
    75.1 247.5 0;
    61.3 247.1 0];
speed = [6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6];
trajectory(car2, waypoints, speed);

car3 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [231.1 267.6 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car3');
waypoints = [231.1 267.6 0;
    232 255.8 0;
    232.4 197.2 0;
    231.5 130.9 0;
    230.6 77.8 0];
speed = [4;4;4;4;4];
trajectory(car3, waypoints, speed);

