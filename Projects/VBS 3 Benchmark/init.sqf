// An fps measurement will be logged every 10 seconds (units measured in miliseconds hence the number 10000 since 10000 miliseconds equals 10 seconds.)
startCaptureFPS 10000; 

// Time in seconds to be measured.
for "_i" from 0 to 300 do {
  systemChat str _i;
  sleep 1;
};

// Log file is created
stopCaptureFPS "Desktop\vbs3fpslog.txt";