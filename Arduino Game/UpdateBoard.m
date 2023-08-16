function[] = UpdateBoard(a,board,pins)
%UpdateBoard This function turns on the light taht corresponds to the
%correct pin
[row, col] = size(board);
for i = 1:row
    for j = 1:col
        writeDigitalPin(a,pins(i,j),board(i,j))
    end
end

end

