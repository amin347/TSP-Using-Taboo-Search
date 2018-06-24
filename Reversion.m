% % % % % % % % % % % % % % % % % % % % % % % %
%------- by Amin Ebrahimi              -------%
%------- website : http://amin347.ir   -------%
%------- github : https://git.io/f4SW5 -------%
%------- Date : 2018-06-12             -------%
% % % % % % % % % % % % % % % % % % % % % % % %


function y = Reversion(x,i1,i2)
y=x;
if i1<i2
    y(i1:i2)=x(i2:-1:i1);
else
    y(i1:-1:i2)=x(i2:i1);
end

end

