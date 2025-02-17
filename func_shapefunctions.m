function [N] = func_shapefunctions(xi,quad_elem_order)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ============================ SHAPE FUNCTIONS ============================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Calculates shape functions for various element types

% -------------------------------------------------------------------------
% Specify just the special case of 2D quadrilateral elements
% -------------------------------------------------------------------------

% 1st order 
if quad_elem_order == 1
    N = zeros(4,1);
    N(1) = 0.25*(1.-xi(1))*(1.-xi(2));
    N(2) = 0.25*(1.+xi(1))*(1.-xi(2));
    N(3) = 0.25*(1.+xi(1))*(1.+xi(2));
    N(4) = 0.25*(1.-xi(1))*(1.+xi(2));

elseif quad_elem_order == 2
    N = zeros(8,1);
    N(1) = -0.25*(1.-xi(1))*(1.-xi(2))*(1.+xi(1)+xi(2));
    N(2) = 0.25*(1.+xi(1))*(1.-xi(2))*(xi(1)-xi(2)-1.);
    N(3) = 0.25*(1.+xi(1))*(1.+xi(2))*(xi(1)+xi(2)-1.);
    N(4) = 0.25*(1.-xi(1))*(1.+xi(2))*(xi(2)-xi(1)-1.);
    N(5) = 0.5*(1.-xi(1)*xi(1))*(1.-xi(2));
    N(6) = 0.5*(1.+xi(1))*(1.-xi(2)*xi(2));
    N(7) = 0.5*(1.-xi(1)*xi(1))*(1.+xi(2));
    N(8) = 0.5*(1.-xi(1))*(1.-xi(2)*xi(2));

else
    disp('Check the quadrilateral element order!')
end

end