x=[0.4997,0.5077,0.5280,0.4983,0.5122,0.4993, ...
   0.5006,0.5302,0.5002,0.5183];
prob=0.9;
[a,b]=intconfmedia2(mean(x),var(x),prob,10);
fprintf(1,'IntConf %2.0f%%=[%6.4f,%6.4f]\n',prob*100,a,b)
