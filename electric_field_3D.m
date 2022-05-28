K=8.99*(10^9);
n=input('Enter the number of charges: ');
for i=1:n
    q(i)=input('Enter the charge in coulombs: ');
end
disp('Enter the coordinates for the field point: ');
xf=input('Enter the x coordinate of the field point: ');
yf=input('Enter the y coordinate of the field point: ');
zf=input('Enter the z coordinate of the field point: ');

disp('Enter the coordinates for the source point for the n charges:');
for m=1:n
    x(m)=input('Enter the x coordinate: ');
    y(m)=input('Enter the y coordinate: ');
    z(m)=input('Enter the z coordinate: ');
    
    % field point --source point for getting vector r
    xi(m)=xf-x(m);
    yi(m)=yf-y(m);
    zi(m)=zf-z(m);
   
end

sum=0;
for m=1:n
    magnitude(m)=(sqrt((xi(m)^2)+(yi(m)^2)+(zi(m)^2))^3);
    sum=sum+q(m)*([xi(m),yi(m),zi(m)]/magnitude(m));
end

disp('The Electric Field Intensity is: ');
electric_field=K*sum;
electric_field;