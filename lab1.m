vec_a = (-2*pi : pi/4 : 2*pi)';
vec_b = tan(vec_a)
vec_c = vec_a ./ vec_b;

disp('vector A:'); disp(vec_a);
disp('Vector B:'); disp(vec_b);
disp('Vector c:');disp(vec_c);
% --- Task 2: Matrices ---

Z = randn(3, 2);

Z_transposed = Z';

A = randn(3, 1);
Z_combined = [Z, A];

det_Z = det(Z_combined);

disp('Matrix Z:'); disp(Z);
disp('Transposed Z:'); disp(Z_transposed);
disp('Combined Matrix:'); disp(Z_combined);
disp('Determinant:'); disp(det_Z);0
% --- Task 3: Practical Applications ---

A_val = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;

t = 0 : 0.005 : 2;

s = A_val * cos(2 * pi * f * t);
n = sigma * randn(size(t));
x = s + n; 

selected_samples = x(x > U1);

filtered_signal = x;
filtered_signal(abs(filtered_signal) < U2) = 0;

num_unfiltered = length(x);

num_selected = length(selected_samples);

min_val = min(filtered_signal);
max_val = max(filtered_signal);

disp('--- Task 3 Results ---');
disp(['Unfiltered sample count: ', num2str(num_unfiltered)]);
disp(['Selected sample count (> U1): ', num2str(num_selected)]);
disp(['Filtered Min Voltage: ', num2str(min_val)]);
disp(['Filtered Max Voltage: ', num2str(max_val)]);
% --- Task P1: Indexing of Vector Elements ---

A_user = input('Enter vector A: ');

B = [A_user, A_user(end:-1:1)];

disp('vector B is:');
disp(B);