model = 'schemaacfir';
open_system(model);

w = logspace(1,3,20);
G2FR = frestimate(model,simout,w,'rad/s');
bodeplot (G2FR,w);
% 
% io(1) = linio('schemaacfir/Dat Type Conversion',1,'input');
% io(2)=linio('schemaacfir/top_level',2,'output');
% 
% spec = operspec(model);
% % opOpts = findopOptions('DisplayReport','off');
% % op = findop(model,spec,opOpts);
% 
% input = frest.Sinestream('Frequency',logspace(0,3,20));
% sys_esti = frestimate(model,io,input);
% 
% bode(sys_esti,'r*')