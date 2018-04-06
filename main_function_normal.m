clear all;

%% Taking starting point input

prompt='Enter the starting point coordinates for x (0 - 250)';
start_x=input(prompt);
prompt='Enter the starting point coordinates for y (0 - 150)';
start_y=input(prompt);

% % Checking for validity in worksapce

s_valid_obs = obstacle_space(start_x,start_y);
if  s_valid_obs == 1
    fprintf('\n \n The point is  in obstacle space \n \n');
    prompt='Enter valid starting point coordinates for x(0 - 250)';
    start_x=input(prompt);
    prompt='Enter valid starting point coordinates for y (0 - 150)';
    start_y=input(prompt);
end
start= [start_x,start_y];


%% Taking goal pint input

prompt='Enter the goal point coordinates for x (0 - 250)';
goal_x=input(prompt);
prompt='Enter the goal point coordinates for y (0 - 150)';
goal_y=input(prompt);

% % Checking for validity in worksapce

g_valid_obs = obstacle_space(goal_x,goal_y);
if  g_valid_obs == 1
    fprintf('\n \n The point is in obstacle space \n \n');
    prompt='Enter valid ending point coordinates for x(0 - 250)';
    start_x=input(prompt);
    prompt='Enter valid ending point coordinates for y (0 - 150)';
    start_y=input(prompt);
end
goal= [goal_x,goal_y];

%% Initializing Variables


i=1;
j=1;
k=1;
xw=[0,250,250,0];
yw=[0,0,150,150];
Parent=1;
Nodes(:,:,i)=start;
path=[];
i=i+1;
NodesInfo=[];
Child_Node=[];

%% Search

while j==1
    
    CurrentParentNode=Nodes(:,:,Parent);
    x=CurrentParentNode(1);
    y=CurrentParentNode(2);
    
%% Moving Right    
    x_child=x+1;
    y_child=y;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
%% Moving Right-up    
    
   x_child=x+1;
   y_child=y+1;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end  
    
 %% Moving up
 
  x_child=x;
  y_child=y+1;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
 %% Moving left up
 
  x_child=x-1;
  y_child=y;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
    
 %% Moving Left
 
  x_child=x-1;
  y_child=y;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
 %% Moving left down
 
  x_child=x-1;
  y_child=y-1;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
    
  %% Moving Down
  
   x_child=x+1;
   y_child=y-1;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
 %% Moving down right
 
  x_child=x+1;
  y_child=y-1;
    
    if x_child==goal(1) && y_child==goal(2)
        fprintf("Goal Rached");
        Nodes(:,:,i)=[x_child,y_child];
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
        break;
    end
        
    obs_space=obstacle_space(x_child,y_child);
    node_valid=inpolygon(x_child,y_child,xw,yw); 
    if obs_space==0 && node_valid==1
        Child_Node=[x_child,y_child];
    end
    found = find(Nodes(:,1,:)==Child_Node(1) & (Nodes(:,2,:)==Child_Node(2)));
    if isempty(found)==0
        search=1;
    else 
        search=0;
    end
    if search==0
        Nodes(:,:,i)=Child_Node;
        NodesInfo(:,:,i)=[i,Parent,0];
        i=i+1;
    end
    
Parent=Parent+1;    
end

%% Backtracking the path from goal to start node
p=Parent;
k=1;
 while p>1

    parent_node=NodesInfo(1,2,p);
    path(:,k)=Nodes(:,:,parent_node);
    p=parent_node;
    k=k+1;

end	   
%% Plotting the Map

% % Obstacle space plotting
X=[120,145,168,188,165,158];
Y=[55,14,14,51,89,51];

x=[55,105,105,55];
y=[67.5,67.5,112.5,112.5];

ang=0:0.01:2*pi; 
xp=15*cos(ang);
yp=15*sin(ang);


fill(X,Y,'k');
hold on
fill (x,y,'k');
hold on 
fill(180+xp,120+yp,'k');
axis ([0 250 0 150]);
hold on
plot(start(1),start(2),'b*');
plot(goal(1),goal(2),'b*');
plot(path(1,:),path(2,:),'r*');