predict=2;
delete(instrfind(('Port'),('COM3')))
arduino=serial('COM3','BaudRate',9600);
fopen(arduino);
while 1
    fprintf(arduino,predict);
end
fclose(arduino);
delete(instrfind(('Port'),('COM3')))
    