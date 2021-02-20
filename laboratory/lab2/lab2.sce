n=5.1;
//разница между катером и лодкой 
k=19;
//начальное расстояние ммежду катером и лодкой
fi=3*%pi/4;
//функция описывающая движение катера береговой охраны 
function dr=f(theta,r)
    dr=r/sqrt(n*n-1);
endfunction;
//начальные условия первого случая
r0=k/(n+1);
theta0=0;
theta=0:0.01:2*%pi;
r=ode(r0,theta0,theta,f);
//функция описывающая движение лодки браконьеров
function xt=f2(t)
    xt=cos(fi)*t;
endfunction
    t=0:1:800;
    plot2d(t,f2(t),style = color('red'));
    //построение траектории движения браконьерской лодки 
    polarplot(theta,r,style=color('green'));
    //построение движения катера в полярных коодинатах
    
    r0=k/(n-1);
    theta0=-%pi;
    figure();
    r=ode(r0,theta0,theta,f);
    plot2d(t,f2(t),style=color('red'));
    //построение движения браконьерской ложки
    polarplot(theta,r,style=color('green'));
    //построение траектории движения катера в полярных кооддинатах 
      
    
    
    
    
    
     
