
function a = hamm(n)
    %function that returns the hamming coefficients
    samp = [0:1:n-1];
    coef = 0.54-0.46*cos(2*pi*samp/n);
    a= coef;
end