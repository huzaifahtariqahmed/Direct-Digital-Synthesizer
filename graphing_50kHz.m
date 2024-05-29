% Open the file for reading
fileID = fopen('50kHz.txt', 'r');

% Read the data using fscanf
data = fscanf(fileID, '# KERNEL: Time= %f, Counter= %d, DDS_Sin= %d\n', [3, Inf]);

% Close the file
fclose(fileID);

% Extract counter, DDS_Sin, and time values
time = data(1, :);
counter = data(2, :);
dds_sin = data(3, :);

% Plot the graphs
plot(time, dds_sin, "r", "LineWidth", 2);
hold on
stairs(time, dds_sin, "b", "LineWidth", 2);
hold off

% Add labels and title
legend('Analog', 'Digital');
xlabel('Time');
ylabel('DDS Sin');
title('10 kHZ Sine Wave Generated Using DDS');

% Show the grid
grid on;
