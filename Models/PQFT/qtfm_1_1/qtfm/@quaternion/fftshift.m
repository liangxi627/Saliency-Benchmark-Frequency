function Y = fftshift(X,dim)
% FFTSHIFT Shift zero-frequency component to center of spectrum.
% (Quaternion overloading of standard Matlab function.)

% Copyright � 2005 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

error(nargchk(1, 2, nargin)), error(nargoutchk(0, 1, nargout)) 

if nargin == 1
    if ispure_internal(X)
        Y = class(compose(fftshift(exe(X)), ...
                          fftshift(wye(X)), ...
                          fftshift(zed(X))), 'quaternion');
    else
        Y = class(compose(fftshift(ess(X)), ...
                          fftshift(exe(X)), ...
                          fftshift(wye(X)), ...
                          fftshift(zed(X))), 'quaternion');
    end
else
    if ispure_internal(X)
        Y = class(compose(fftshift(exe(X), dim), ...
                          fftshift(wye(X), dim), ...
                          fftshift(zed(X), dim)), 'quaternion');
    else
        Y = class(compose(fftshift(ess(X), dim), ...
                          fftshift(exe(X), dim), ...
                          fftshift(wye(X), dim), ...
                          fftshift(zed(X), dim)), 'quaternion');
    end
end