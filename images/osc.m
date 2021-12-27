Q = [1,5,10,100]; omega0 = 1;
beta = omega0./(2*Q);
omega = linspace(0,5*omega0,1000);
omega1 = linspace(0,omega0,1000/5);
omega2 = linspace(omega0,5*omega0,4*1000/5);
% figure(1); set(0,'DefaultLineLineWidth',2);
% plot(omega,A(omega0,omega,beta(1))/A(omega0,omega0,beta(1)),'-k'); hold on;
% plot(omega,A(omega0,omega,beta(2))/A(omega0,omega0,beta(2)),'--');
% plot(omega,A(omega0,omega,beta(3))/A(omega0,omega0,beta(3)),'-.');
% plot(omega,A(omega0,omega,beta(4))/A(omega0,omega0,beta(4)),':'); hold off;
% xlabel('\omega/\omega_0'); ylabel('A(\omega)/A(\omega_0)');
% legend('\omega_0/2','\omega_0/10','\omega_0/20','\omega_0/200')
% yticks([1]); xticks([0,1]); box off;
% set(gca,'linewidth',1.5);
figure(1); set(0,'DefaultLineLineWidth',2);
plot(omega,Delta(omega0,omega1,omega2,beta(1))/pi,'-k'); hold on;
plot(omega,Delta(omega0,omega1,omega2,beta(2))/pi,'--');
plot(omega,Delta(omega0,omega1,omega2,beta(3))/pi,'-.');
plot(omega,Delta(omega0,omega1,omega2,beta(4))/pi,':'); hold off;
xlabel('\omega/\omega_0'); ylabel('\delta/\pi');
legend('\omega_0/2','\omega_0/10','\omega_0/20','\omega_0/200')
yticks([1/2,1]); xticks([0,1]); box off;
set(gca,'linewidth',1.5);
function a = A(omega0,omega,beta)
    a = 1./sqrt((omega0^2-omega.^2).^2+4*beta^2*omega.^2);
end
function d = Delta(omega0,omega1,omega2,beta)
    d1 = atan2(2*beta*omega1,omega0^2-omega1.^2);
    d2 = atan2(2*beta*omega2,omega0^2-omega2.^2);
    d = [d1,d2];
end