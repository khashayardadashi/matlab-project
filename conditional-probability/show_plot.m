function show_plot()
    figure(1);
    title('P[T0|R1]');
    creating_plot(0.1, [1,0,0], 1, 2);
    hold on;
    creating_plot(0.5, [0,0.5,0], 1, 2);
    hold on;
    creating_plot(0.9, [0,0,1], 1, 2);

    figure(2);
    title('P[T0|R0]');
    creating_plot(0.1, [1,0,0], 1, 1);
    hold on;
    creating_plot(0.5, [0,0.5,0], 1, 1);
    hold on;
    creating_plot(0.9, [0,0,1], 1, 1);

    figure(3);
    title('P[T1|R0]');
    creating_plot(0.1, [1,0,0], 2, 1);
    hold on;
    creating_plot(0.5, [0,0.5,0], 2, 1);
    hold on;
    creating_plot(0.9, [0,0,1], 2, 1);

    figure(4);
    title('P[T1|R1]');
    creating_plot(0.1, [1,0,0], 2, 2);
    hold on;
    creating_plot(0.5, [0,0.5,0], 2, 2);
    hold on;
    creating_plot(0.9, [0,0,1], 2, 2);
end