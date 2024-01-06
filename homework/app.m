cdf_graph();
% P[X<=2]
result1 = calculate_answers(2);
disp(['P[X<=2] : '  num2str(result1)])
% P[X=0]
result2=calculate_answers(0);
disp(['P[X=0] : '  num2str(result2)])
% P[X<0]
result3=calculate_answers(-1);
disp(['P[X<0] : '  num2str(result3)]);
% P[0<=X<=6] => P[X<=6]-P[X<=2]
result4=calculate_answers(6) - calculate_answers(2);
disp(['P[0<=X<=6] : '  num2str(result4)]);
% P[X>10]=> 1-P[X<=10]
result5=1-calculate_answers(10);
disp(['P[X>10] : '  num2str(result5)]);