function Y = ifftshift(X,dim)
% IFFTSHIFT Inverse FFT shift.
% (Quaternion overloading of standard Matlab function.)

% Copyright � 2005 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

error(nargchk(1, 2, nargin)), error(nargoutchk(0, 1, nargout)) 

if nargin == 1
    if ispure_internal(X)
        Y = class(compose(ifftshift(exe(X)), ...
                          ifftshift(wye(X)), ...
                          ifftshift(zed(X))), 'quaternion');
    else
        Y = class(compose(ifftshift(ess(X)), ...
                          ifftshift(exe(X)), ...
                          ifftshift(wye(X)), ...
                          ifftshift(zed(X))), 'quaternion');
    end
else
    if ispure_internal(X)
        Y = class(compose(ifftshift(exe(X), dim), ...
                          ifftshift(wye(X), dim), ...
                          ifftshift(zed(X), dim)), 'quaternion');
    else
        Y = class(compose(ifftshift(ess(X), dim), ...
                          ifftshift(exe(X), dim), ...
                          ifftshift(wye(X), dim), ...
                          ifftshift(zed(X), dim)), 'quaternion');
    end
end
