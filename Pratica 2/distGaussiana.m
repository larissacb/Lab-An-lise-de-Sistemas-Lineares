function [y] = distGaussiana(x,m,sigma)

y = exp(-0.5.*((x-m)./sigma).^2)./(sigma.*sqrt(2*pi));
end

