function imageScreen(hObject, evt)

global vrep clientID sensorDXHandle sensorSXHandle 

[~, ~, visionImageDX] = vrep.simxGetVisionSensorImage2(clientID, sensorDXHandle, 0, vrep.simx_opmode_oneshot_wait);

[~, ~, visionImageSX] = vrep.simxGetVisionSensorImage2(clientID, sensorSXHandle, 0, vrep.simx_opmode_oneshot_wait);

subplot(1,2,1), subimage(visionImageSX);
subplot(1,2,2), subimage(visionImageDX);

end