% % % % % % % % % % % % % % % % % % % % % % % %
%------- by Amin Ebrahimi              -------%
%------- website : http://amin347.ir   -------%
%------- github : https://git.io/f4SW5 -------%
%------- Date : 2018-06-24             -------%
% % % % % % % % % % % % % % % % % % % % % % % %


function q = DoAction(p,a)

switch a(1)
    case 1
        % Swap
        q = Swap(p,a(2),a(3));
        
    case 2
        % Reversion
        q = Reversion(p,a(2),a(3));
    case 3
        % Insertion
        q = Insertion(p,a(2),a(3));
end

end

