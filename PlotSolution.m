% % % % % % % % % % % % % % % % % % % % % % % %
%------- by Amin Ebrahimi              -------%
%------- website : http://amin347.ir   -------%
%------- github : https://git.io/f4SW5 -------%
%------- Date : 2018-06-12             -------%
% % % % % % % % % % % % % % % % % % % % % % % %


function PlotSolution( BestSolotion,model )
x = model.X;
y = model.Y;
BestSolotion = [BestSolotion BestSolotion(1)];

plot(x(BestSolotion),y(BestSolotion),'K-O','MarkerSize',10,'MarkerFaceColor','y','LineWidth',2);
%axis equal;
end

