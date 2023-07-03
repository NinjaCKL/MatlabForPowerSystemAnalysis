function varargout = PIController(varargin)
global nump denp numh denh

% PICONTROLLER Application M-file for PController.fig
%    FIG = PICONTROLLER launch PController GUI.
%    PICONTROLLER('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 05-Jun-2002 09:24:07

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		if (nargout)
			[varargout{1:nargout}] = feval(varargin{:})  % FEVAL switchyard
		else
			feval(varargin{:}); % FEVAL switchyard
		end
	catch
		disp(lasterr)
	end

end

%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  The function phlag(num, den, zeta) is used for the design of a phase-  
%  lag compensator using the approximated method k =~ K0/Kc.  num & den   
%  are row vectors of polynomial coefficients of the uncompensated open-  
%  loop plant transfer function.  zeta is the desired damping ratio. The  
%  user is prompted to enter gain K required for the steady-state error   
%  specification & the magnitude of the compensator zero, Z0. [Z0 <<³s1³].
%  The function returns the open-loop and the closed-loop numerator and   
%  denominator of the compensated system transfer function.               
%      


function varargout = s1Text_Callback(h, eventdata, handles, varargin)
s1handle=findobj(gcbf, 'Tag','s1Text');
s1=eval(get(s1handle,'String'));

% --------------------------------------------------------------------
function varargout = Z0Text_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = pushbuttonPI_Callback(h, eventdata, handles, varargin)

global nump denp numh denh compsys
 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program is used for the design of a PI controller.
%  num & den are row vectors of polynomial coefficients'
%  of the uncompensated open-loop plant transfer function and s1 = å + j*w
%  is a desired pole of the closed-loop transfer function. For the case
%  that s1 is real the user is prompted to enter the magnitude of the  
%  compensator zero, ³Z0³.  The program returns the open-loop and the 
%  closed-loop numerator and denominators of the compensated system    
%  transfer function.                                                                                     
% 
% Hadi Saadat, 1999  Revised  2002

s1handle=findobj(gcbf, 'Tag','s1Text');
s1=eval(get(s1handle,'String'));
textZoinputHandle=findobj(gcbf,'Tag','textZoinput');
textZoisHandle=findobj(gcbf,'Tag','textZois');
Z0handle=findobj(gcbf, 'Tag','Z0Text');
z0=eval(get(Z0handle,'String'));
textA0Handle=findobj(gcbf,'Tag','textA0');
set(textZoinputHandle, 'visible', 'off');
set(textZoisHandle, 'visible', 'off');
set(Z0handle, 'visible', 'off');
set(textA0Handle, 'visible', 'off');
Kpr=0;
num= conv(nump, numh);
den= conv(denp, denh);
m=length(num);
n=length(den);
ax2=axes('Position',[0.5 .46 .44 .5],'NextPlot', 'replace');

rlocus(num, den), grid, 
title('Uncompensated system root-locus')

beta=atan2(imag(s1),real(s1));
sm=abs(s1);
[mag,phase]=ghs(num,den,s1);   % Returns the mag. and phase of G(s1)H(s1)
  if imag(s1)==0
  
  set(textZoinputHandle, 'visible', 'on')
   set(textZoisHandle, 'visible', 'on')
   Z0handle=findobj(gcbf, 'Tag','Z0Text');
   set(Z0handle, 'visible', 'on')
   set(textA0Handle, 'visible', 'on')
   Z0=eval(get(Z0handle,'String'));
   Kpr=1;
  
  ghr=mag*cos(phase);
  KP=-s1/((s1+Z0)*ghr);
  KI=Z0*KP;
  else
KI=-(sm*sin(phase))/(mag*sin(beta));
KP=-sin(beta+phase)/(mag*sin(beta))-(2*KI*cos(beta))/sm;
Z0=KI/KP;
   end
P0=0;

numGc=[KP, KI];
denGc=[1  0];
num1=conv(numGc, nump);
den1=conv(denGc, denp);
numo=conv(num1, numh);
deno=conv(den1, denh);
mo=length(numo); no = length(deno);
numc=conv(num1, denh);
numd=conv(num1, numh);
nm=no-mo;
pad0=zeros(1,nm);
numd=[pad0, numd];
denc=deno+numd;
n=length(denc); m=length(numc);

axes(handles.axesh5)    % Select the proper axes
hrst2=gca;
cla(hrst2)

text(0.05, .9, ['Controller: G_c(s) = ', num2str(KP),' + ', num2str(KI), '/s'], 'color', [0 0 0.62745])
if KP < 0 | KI < 0 
   text(0.05,.6, 'Unstable controller', 'color', [1 0 0])
   if Kpr==0
   text(0.05,.55, 'Change s_1 & repeat', 'color', [1 0 0])
elseif Kpr==1
       text(0.05,.55, 'Change Z_0 or s_1 & repeat', 'color', [1 0 0])
       Kpr=0;
   else, end
   axis off
return
end

text(0.05,.85, 'Compensated Open-loop TF', 'color', [0 0 0.62745])
text(0.05, .775, 'KG_cG_pH(s) = ' , 'color', [0  0 0.62745]) 
if mo==1
   text(.55, .8, num2str(numo(1)), 'color', [0  0  0.62745]) 
   elseif mo==2
   text(.55, .8, [num2str(numo(1)),'s + ',num2str(numo(2))], 'color', [0  0  0.62745]) 
   elseif mo==3
   text(.55, .8, [num2str(numo(1)),'s^2 + ',num2str(numo(2)),'s + ', num2str(numo(3))], 'color', [0  0  0.62745]) 
   elseif mo==4
   text(.55, .8, [num2str(numo(1)),'s^3 + ',num2str(numo(2)),'s^2 + ', num2str(numo(3)),'s + ', num2str(numo(4))], 'color', [0  0  0.62745])
	elseif mo==5
   text(.35, .8, [num2str(numo(1)),'s^4 + ',num2str(numo(2)),'s^3 + ', num2str(numo(3)),'s^2 + ', num2str(numo(4)),'s + ', num2str(numo(5))], 'color', [0  0  0.62745])
 	elseif mo==6
   text(.35, .8, [num2str(numo(1)),'s^5 + ',num2str(numo(2)),'s^4 + ', num2str(numo(3)),'s^3 + ', num2str(numo(4)),'s^2 + ', num2str(numo(5)),'s + ', num2str(numo(6))], 'color', [0  0  0.62745])
   elseif mo==7
   text(.35, .8, [num2str(numo(1)),'s^6 + ',num2str(numo(2)),'s^5 + ', num2str(numo(3)),'s^4 + ', num2str(numo(4)),'s^3 + ', num2str(numo(5)),'s^2 + ', num2str(numo(6)),'s + ' , num2str(numo(7))], 'color', [0  0  0.62745])
	elseif mo==8
   text(.35, .8, [num2str(numo(1)),'s^7 + ',num2str(numo(2)),'s^6 + ', num2str(numo(3)),'s^5 + ', num2str(numo(4)),'s^4 + ', num2str(numo(5)),'s^3 + ', num2str(numo(6)),'s^2 + ' , num2str(numo(7)),'s + ', num2str(numo(8))], 'color', [0  0  0.62745])
else, end
 if no==1
   text(0.36, 0.795,'\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, .75, num2str(deno(1)), 'color', [0  0  0.62745]) 
   elseif no==2
   text(0.36, 0.795,'\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, .75, [num2str(deno(1)),'s + ',num2str(deno(2))], 'color', [0  0  0.62745]) 
	elseif no==3 
   text(0.36, 0.795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, .75, [num2str(deno(1)),'s^2 + ',num2str(deno(2)),'s + ', num2str(deno(3))], 'color', [0  0  0.62745]) 
	elseif no==4
   text(0.36, 0.795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, .75, [num2str(deno(1)),'s^3 + ',num2str(deno(2)),'s^2 + ', num2str(deno(3)),'s + ', num2str(deno(4))], 'color', [0  0  0.62745])
	elseif no==5
   text(0.36, 0.795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
   text(0.36, .75, [num2str(deno(1)),'s^4 + ',num2str(deno(2)),'s^3 + ', num2str(deno(3)),'s^2 + ', num2str(deno(4)),'s + ', num2str(deno(5))], 'color', [0  0  0.62745])
 	elseif no==6
   text(0.36, 0.795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
   text(0.36, .75, [num2str(deno(1)),'s^5 + ',num2str(deno(2)),'s^4 + ', num2str(deno(3)),'s^3 + ', num2str(deno(4)),'s^2 + ', num2str(deno(5)),'s + ', num2str(deno(6))], 'color', [0  0  0.62745])
   elseif no==7
   text(0.36, .1,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, -.25, [num2str(deno(1)),'s^6 + ',num2str(deno(2)),'s^5 + ', num2str(deno(3)),'s^4 + ', num2str(deno(4)),'s^3 + ', num2str(deno(5)),'s^2 + ', num2str(deno(6)),'s + ', num2str(deno(7))], 'color', [0  0  0.62745])
   elseif no==8
   text(0.36, .795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
   text(0.36, .75, [num2str(deno(1)),'s^7 + ',num2str(deno(2)),'s^6 + ', num2str(deno(3)),'s^5 + ', num2str(deno(4)),'s^4 + ', num2str(deno(5)),'s^3 + ', num2str(deno(6)),'s^2 + ', num2str(deno(7)), 's + ', num2str(deno(8)), ], 'color', [0  0  0.62745])
   elseif no==9
   text(0.36, .795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(0.36, .75, [num2str(deno(1)),'s^8 + ',num2str(deno(2)),'s^7 + ', num2str(deno(3)),'s^6 + ', num2str(deno(4)),'s^5 + ', num2str(deno(5)),'s^4 + ', num2str(deno(6)),'s^3 + ', num2str(deno(7)), 's^2 + ', num2str(deno(8)), 's + ', num2str(deno(9))], 'color', [0  0  0.62745])
   elseif no==10
   text(0.36, .795,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.36, .75, [num2str(deno(1)),'s^9 + ',num2str(deno(2)),'s^8 + ', num2str(deno(3)),'s^7 + ', num2str(deno(4)),'s^6 + ', num2str(deno(5)),'s^5 + ', num2str(deno(6)),'s^4 + ', num2str(deno(7)), 's^3 + ', num2str(deno(8)), 's^2 + ', num2str(deno(9)), 's + ',num2str(deno(10))], 'color', [0  0  0.62745])
else, end
axis off

text(0.05, .7, 'Compensated Closed-loop TF', 'color',[0 0 0.62745])
text(0.05, .65, ' C(s)', 'color', [0  0 0.62745]) 
text(0.05, .645, '\_\_\_\_   ', 'color', [0  0 0.62745]) 
text(0.05, .625, '         = ', 'color', [0  0 0.62745]) 
text(0.05, .6, ' R(s)' , 'color', [0  0 0.62745]) 
if m==1
   text(.35, .65, num2str(numc(1)), 'color', [0  0  0.62745]) 
   elseif m==2
   text(.35, .65, [num2str(numc(1)),'s + ',num2str(numc(2))], 'color', [0  0  0.62745]) 
   elseif m==3
   text(.35, .65, [num2str(numc(1)),'s^2 + ',num2str(numc(2)),'s + ', num2str(numc(3))], 'color', [0  0  0.62745]) 
   elseif m==4
   text(.35, .65, [num2str(numc(1)),'s^3 + ',num2str(numc(2)),'s^2 + ', num2str(numc(3)),'s + ', num2str(numc(4))], 'color', [0  0  0.62745])
elseif m==5
   text(.35, .65, [num2str(numc(1)),'s^4 + ',num2str(numc(2)),'s^3 + ', num2str(numc(3)),'s^2 + ', num2str(numc(4)),'s + ', num2str(numc(5))], 'color', [0  0  0.62745])
 elseif m==6
   text(.35, .65, [num2str(numc(1)),'s^5 + ',num2str(numc(2)),'s^4 + ', num2str(numc(3)),'s^3 + ', num2str(numc(4)),'s^2 + ', num2str(numc(5)),'s + ', num2str(numc(6))], 'color', [0  0  0.62745])
   elseif m==7
   text(.35, .65, [num2str(numc(1)),'s^6 + ',num2str(numc(2)),'s^5 + ', num2str(numc(3)),'s^4 + ', num2str(numc(4)),'s^3 + ', num2str(numc(5)),'s^2 + ', num2str(numc(6)),'s + ' , num2str(numc(7))], 'color', [0  0  0.62745])
elseif m==8
   text(.35, .65, [num2str(numc(1)),'s^7 + ',num2str(numc(2)),'s^6 + ', num2str(numc(3)),'s^5 + ', num2str(numc(4)),'s^4 + ', num2str(numc(5)),'s^3 + ', num2str(numc(6)),'s^2 + ' , num2str(numc(7)),'s + ', num2str(numc(8))], 'color', [0  0  0.62745])
else, end
 if n==1
   text(0.25, .645,'\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, num2str(denc(1)), 'color', [0  0  0.62745]) 
   elseif n==2
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s + ',num2str(denc(2))], 'color', [0  0  0.62745]) 
	elseif n==3 
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^2 + ',num2str(denc(2)),'s + ', num2str(denc(3))], 'color', [0  0  0.62745]) 
	elseif n==4
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^3 + ',num2str(denc(2)),'s^2 + ', num2str(denc(3)),'s + ', num2str(denc(4))], 'color', [0  0  0.62745])
	elseif n==5
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
   text(.25, .6, [num2str(denc(1)),'s^4 + ',num2str(denc(2)),'s^3 + ', num2str(denc(3)),'s^2 + ', num2str(denc(4)),'s + ', num2str(denc(5))], 'color', [0  0  0.62745])
 	elseif n==6
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
  	text(.25, .6, [num2str(denc(1)),'s^5 + ',num2str(denc(2)),'s^4 + ', num2str(denc(3)),'s^3 + ', num2str(denc(4)),'s^2 + ', num2str(denc(5)),'s + ', num2str(denc(6))], 'color', [0  0  0.62745])
   elseif n==7
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^6 + ',num2str(denc(2)),'s^5 + ', num2str(denc(3)),'s^4 + ', num2str(denc(4)),'s^3 + ', num2str(denc(5)),'s^2 + ', num2str(denc(6)),'s + ', num2str(denc(7))], 'color', [0  0  0.62745])
   elseif n==8
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^7 + ',num2str(denc(2)),'s^6 + ', num2str(denc(3)),'s^5 + ', num2str(denc(4)),'s^4 + ', num2str(denc(5)),'s^3 + ', num2str(denc(6)),'s^2 + ', num2str(denc(7)), 's + ', num2str(denc(8))], 'color', [0  0  0.62745])
	elseif n==9
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^8 + ',num2str(denc(2)),'s^7 + ', num2str(denc(3)),'s^6 + ', num2str(denc(4)),'s^5 + ', num2str(denc(5)),'s^4 + ', num2str(denc(6)),'s^3 + ', num2str(denc(7)), 's^2 + ', num2str(denc(8)), 's + ', num2str(denc(9))], 'color', [0  0  0.62745])
	elseif n==10
   text(0.25, .645,'\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_', 'color', [0  0  0.62745])
	text(.25, .6, [num2str(denc(1)),'s^9 + ',num2str(denc(2)),'s^8 + ', num2str(denc(3)),'s^7 + ', num2str(denc(4)),'s^6 + ', num2str(denc(5)),'s^5 + ', num2str(denc(6)),'s^4 + ', num2str(denc(7)), 's^3 + ', num2str(denc(8)), 's^2 + ', num2str(denc(9)), 's + ',num2str(denc(10))], 'color', [0  0  0.62745])
else, end
x=roots(denc);
taus=1./abs(real(x));
x=x.';
text(0.05, 0.525, 'Roots of the Characteristic Equation:', 'color', [0  0 0.62745]) 
rk=length(x);
if rk <=4, 
text(0.05,.475, num2str(x), 'color', [0  0 0.62745])
elseif rk>=4 & rk<=8,  
   text(0.05,.475, num2str(x(1:4)), 'color', [0  0 0.62745])
   text(0.05,.425, num2str(x(5:rk)), 'color', [0  0 0.62745])
elseif rk>=8 & rk<=13 
   text(0.05,.475, num2str(x(1:4)), 'color', [0  0 0.62745])
   text(0.05, .425, num2str(x(5:8)), 'color', [0  0 0.62745])
   text(0.05, .375, num2str(x(9:rk)), 'color', [0  0 0.62745])
else, end
axis off
Gc=tf([KP, KI], [1 0]);
compopen=tf([numo],[deno]);
compsys=tf([numc], [denc]);
assignin('base', 'Gc',Gc)
assignin('base', 'TFo',compopen)
assignin('base', 'TFc',compsys)
% --------------------------------------------------------------------
function varargout = pushbuttonResponse_Callback(h, eventdata, handles, varargin)
global nump denp numh denh compsys
ltiview('step', compsys)



% --------------------------------------------------------------------
function varargout = pushbuttonClose_Callback(h, eventdata, handles, varargin)
close













