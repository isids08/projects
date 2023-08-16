function [] = RandLight(a,Board,Pins)
%RandLight turns on a random number of lights and reports how many lights
%were turned on.

NLights = randi([1,12]);
totalLight = NLights;
x = [];

for i = 1:NLights
    index = randi([2,13],1);
    x = [x, index];
    Board(index-1) = 1;
    UpdateBoard(a,Board,Pins)
end

for i = 2:13
    occurences = find(i == x);
    if length(occurences) > 1
        totalLight = totalLight - length(occurences) + 1;
    end
end

if totalLight == 1 
    disp("There is " + totalLight + " light on.")
else
    disp("There are " + totalLight + " lights on.")
end

end

  

