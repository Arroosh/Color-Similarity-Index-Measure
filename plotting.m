function []=plotting(Ctrs,fCDF11,fCDF12 ,fCDF13 ,fCDF21 ,fCDF22 ,fCDF23, fCDF31, fCDF32, fCDF33)

figure(2)
plot(Ctrs,fCDF11)
xlim([-0.1 1])
hold on
plot (Ctrs, fCDF21, 'r')
hold on
plot (Ctrs, fCDF31, 'b--')
legend('original','automatic','user')

figure(3)
plot(Ctrs,fCDF12)
xlim([-0.1 1])
hold on
plot (Ctrs, fCDF22, 'r')
hold on
plot (Ctrs, fCDF32, 'b--')
legend('original','automatic','user')

figure(4)
plot(Ctrs,fCDF13)
xlim([-0.1 1])
hold on
plot (Ctrs, fCDF23, 'r')
hold on
plot (Ctrs, fCDF33, 'b--')
 legend('original','automatic','user')