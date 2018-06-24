clc;
clear;
close all;

%% Problem Definition
model = LoadData();                         % Load Data
CostFunction = @(x) TourLenth(x,model);     % Cost Function
ActionList = CreatePermActionList(model.N); % Action List
nActionList = numel(ActionList);            % Number of Actions


%% Tabu Search Parameter

MaxIt = 100;                                % Max Iteration
TL = round(0.01 * nActionList);              % Tabu Length



%% Initialization

empty_individual.Position = [];
empty_individual.Cost = [];

% Create Initial Solution
sol = empty_individual;
sol.Position = CreateRandomSolotion(model);
sol.Cost = CostFunction(sol.Position);

% Initial Best Solution
BestSol = sol;

% Array To Hold Best Cost
BestCost = zeros(MaxIt,1);

% Initial Action List Counter
TC = zeros(nActionList,1);




%% Main Tabu Loop

for it=1 : MaxIt
    
    bestnewsol.Cost = inf;
    
    for i=1 : nActionList
        
        if TC == 0
            newsol.Position = DoAction(sol.Position,ActionList{i});
            newsol.Cost=CostFunction(newsol.Position);
            newsol.ActionIndex = i;
            
            if newsol.Cost <= bestnewsol.Cost
                bestnewsol = newsol;
            end
        end
        
    end
    
    % Update Curent Solution
    sol = bestnewsol;
    
    % Update Tabu List
    for i = nActionList
       if i == bestnewsol.ActionIndex
           TC(i) = TL;              % Add to Tabu List
       else
           TC(i) = max(TC(i)-1,0);  % Reduce Tabu Counter 
       end
    end
    
    % Update Best Solution
    if sol.Cost <= BestSol.Cost
       BestSol = sol; 
    end
    
    % Save Best Cost
    BestCost(it) = BestSol.Cost;
    
    %Show Status
    disp(['Iteration: ' num2str(it) ' And Best Cost = ' num2str(BestCost(it))]);
end

%% Results

figure;
plot(BestCost,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');


figure;
PlotSolution( BestSol.Position,model )
toc
