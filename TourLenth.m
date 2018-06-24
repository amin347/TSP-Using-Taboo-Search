% % % % % % % % % % % % % % % % % % % % % % % %
%------- by Amin Ebrahimi              -------%
%------- website : http://amin347.ir   -------%
%------- github : https://git.io/f4SW5 -------%
%------- Date : 2018-06-20             -------%
% % % % % % % % % % % % % % % % % % % % % % % %


function L = TourLenth( tour , model )
    n = numel(tour);
    tour = [tour  tour (1)];
    L = 0;
    for k=1 : n
        i = tour(k);
        j = tour (k+1);
        
        L = L + model.D(i,j);
    end
end

