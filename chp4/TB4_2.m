%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 toolbox 4.2 %%

%% using toolbox
% [P,w,S]=vtb4_1(M,K)
m1 = 1; m2 = 4; k1 = 10; k2 = 2; k3 = 10;
M = [m1 0 ; 0 m2]; K = [(k1+k2) -k2 ; -k2 (k2+k3)];
[P,w,S]=vtb4_1(M,K)
%% calculate w/o toolbox
Kh = sqrt(M^-1)*K*sqrt(M^-1);
[V,D] = eig(Kh);
%% coordinate transformation
U = sqrt(M^-1)*V;
S1 = sqrt(M^-1)*U;
%% normalization
Vn = zeros(size(V));
for i=1:size(V)
    Vn(:,i) = V(:,i)/norm(V(:,i));
end
Un = zeros(size(V));
for i=1:size(V)
    Un(:,i) = U(:,i)/norm(U(:,i));
end
%% proof
proof1 = S'*M*S
proof2 = S'*K*S