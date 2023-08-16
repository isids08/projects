function [nDays_followers,nDays_likes,nDays_reach] = DaysThatMetricsIncreased(followers,likes,reach)
%DaysThatMetricsIncreased This function takes in three data sets and
%outputs the number of times the data increased in each data set. 

Followers_Vector = reshape(followers',1,[]);
Likes_Vector = reshape(likes',1,[]);
Reach_Vector = reshape(reach',1,[]);
countF = 0;
countL = 0;
countR = 0;
    for i = [2:length(Followers_Vector)]
        if(Followers_Vector(i) > Followers_Vector(i-1))
        countF = countF + 1;
        end
        if(Reach_Vector(i) > Reach_Vector(i-1))
        countR = countR + 1;
        end
        if(Likes_Vector(i) > Likes_Vector(i-1))
        countL = countL + 1;
        end
    end 
nDays_followers = countF;
nDays_likes = countL;
nDays_reach = countR;
end

