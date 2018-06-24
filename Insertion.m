% % % % % % % % % % % % % % % % % % % % % % % %
%------- by Amin Ebrahimi              -------%
%------- website : http://amin347.ir   -------%
%------- github : https://git.io/f4SW5 -------%
%------- Date : 2018-06-12             -------%
% % % % % % % % % % % % % % % % % % % % % % % %


function y = Insertion(x,i1,i2)

if i1<i2
    y=x([1:i1-1 i1+1:i2 i1 i2+1:end]); 
else
    y=x([1:i2 i1 i2+1:i1-1 i1+1:end]);    
end

end

