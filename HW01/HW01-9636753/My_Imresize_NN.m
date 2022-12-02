function Output_Image = My_Imresize_NN (Input_Image, Resizing_Factor)

    [Nx, Ny] = size(Input_Image);
    Nu = floor(Resizing_Factor * Nx);
    Nv = floor(Resizing_Factor * Ny);

    u = 1:(Nx-1)/(Nu-1):Nx;
    tmpim = zeros(Nu, Ny,class(Input_Image));

    for i=1:Nu
        u1 = floor(u(i));
        fract = u(i)- u1;
        fract_next = abs(u(i)-(u1+1));
        
        if fract<fract_next
            tmpim(i,:)=Input_Image(u1,:);
        else    
             tmpim(i,:)= Input_Image(u1+1,:);
        end
    end
    
    v = 1:(Ny-1)/(Nv-1):Ny;
    Output_Image = zeros(Nu, Nv,class(Input_Image));

    for j=1:Nv
        v1 = floor(v(j));
        fract = v(j)- v1;
        fract_next = abs(v(j)-(v1+1));
        if fract<fract_next
            Output_Image(:,j) = tmpim(:,v1);
            
        else    
             Output_Image(:,j)=tmpim(:,v1+1);
        end
    end
    
end

