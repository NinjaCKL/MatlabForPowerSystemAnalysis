function varargout = Chp2ex1gui(varargin)
% CHP2EX1AGUITMP Application M-file for Chp2ex1Agui.fig
%    FIG = CHP2EX1AGUITMP launch Chp2ex1Agui GUI.
%    CHP2EX1AGUITMP('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 23-May-2002 09:58:01

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
axes(handles.Cktaxes1)    % Select the proper axes

x1=[ -.2  -.2   1.5  1.5];
y1=[0.6   .8     .8   .6];
x2=[-.2  -.2  1.5  1.5];
y2=[0.4  .2    .2    .4];
xb=[1.4  1.4  1.6  1.6  1.4];
yb=[0.4  0.6  0.6  0.4  0.4];
th=0:.005:2*pi;
x=-.2+0.1*cos(th);
y=0.5 +0.1*sin(th);
tho=0:.005:pi;
xo=0.05*cos(tho);
yo= 1 +.05*sin(tho);
xla=0.75+xo;
xlb=0.85+xo;
xlc=0.95+xo;
xl2=[0.8  .8]; yl2=[0.7 1];
xc1=[1.05  1.15]; yc1=[0.45  0.45]; yc2=[0.55 0.55];
plot(x1, y1,'b', x2,y2,'b','erasemode','none')
hold on
plot(xb,yb,'b')

plot(x,y)     %circle
axis off
text(-.05, .5, 'v(t)=V_m cos(\omegat+\theta_v)')
%text(.8, .5, 'V_2=|V_2|\angle\delta_2')
text(1.125, .5, '|Z|\angle\theta')
text(-.225,.525,'\pm')
text(-.1,.9,'i(t)', 'color',[1 0 0])
text(-.1, .85,'\rightarrow', 'color',[1 0 0])
hold off

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		if (nargout)
			[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
		else
			feval(varargin{:}); % FEVAL switchyard
		end
	catch
		disp(lasterr);
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

% --------------------------------------------------------------------
function varargout = Vm_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = thetav_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = Z_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = gama_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = Cktaxes1_ButtonDownFcn(h, eventdata, handles, varargin)
% --------------------------------------------------------------------

% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
VmHandle=findobj('Tag','Vm');
Vm=eval(get(VmHandle,'String'));
thetavHandle=findobj('Tag','thetav');
thetav=eval(get(thetavHandle,'String'));
ZHandle=findobj('Tag','Z');
Z=eval(get(ZHandle,'String'));
gamaHandle=findobj('Tag','gama');
gama=eval(get(gamaHandle,'String'));

thetai = thetav - gama;           % Current phase angle in degree
theta = (thetav - thetai);
theta=theta*pi/180;              % Degree to radian
Im = Vm/Z;                                    % Current amplitude
wt=0:.05:2*pi;                                % wt from 0 to 2*pi
v=Vm*cos(wt+thetav*pi/180);               % Instantaneous voltage
i=Im*cos(wt + thetai*pi/180);             % Instantaneous current
p=v.*i;                                     % Instantaneous power
V=Vm/sqrt(2); I=Im/sqrt(2);             % rms voltage and current
P = V*I*cos(theta);                               % Average power
Q = V*I*sin(theta);                              % Reactive power
if abs(P) < 0.00001, P=0; end
if abs(Q) < 0.00001, Q=0; end
S = P + j*Q;                                       % Complex power
pr = P*(1 + cos(2*(wt + thetav)));                    % Eq. (2.6)
px = Q*sin(2*(wt + thetav));                          % Eq. (2.8)
PP=P*ones(1, length(wt));  % Average power with length w for plot
wt0=[0 400];
xline=[0,0];
wt=180/pi*wt;                       % converting radian to degree
axes(handles.viaxes) % Select the proper axes
h1= plot(wt, v, 'b', wt0, xline,'k'); grid
xlabel('\omegat, degree'), ylabel('v(t)','Color', 'b')
axes(handles.axesi) % Select the proper axes
set(gca,'Color','none')
h2=plot(wt, i,'color','r'); 
ylabel('i(t)')
if thetav < 0 & thetai <0
    title(['v(t)=',num2str(Vm), 'cos( \omegat ', num2str(thetav), ')   i(t)=', num2str(Im), 'cos(\omega t ', num2str(thetai), ')'])
elseif thetav >= 0 & thetai <0
    title(['v(t)=',num2str(Vm), 'cos( \omegat + ', num2str(thetav), ')   i(t)=', num2str(Im), 'cos(\omega t ', num2str(thetai), ')'])
elseif thetav < 0 & thetai >= 0
title(['v(t)=',num2str(Vm), 'cos( \omega t ', num2str(thetav), ')    i(t)=', num2str(Im), 'cos(\omega t + ', num2str(thetai), ')'])
elseif thetav >= 0 & thetai >= 0
title(['v(t)=',num2str(Vm), 'cos( \omega t + ', num2str(thetav), ')    i(t)=', num2str(Im), 'cos(\omega t + ', num2str(thetai), ')'])
end

axes(handles.ptaxes) % Select the proper axes
plot(wt, p, 'm', wt0, xline,'k'), grid
title('Instantaneous power,   p(t)=v(t) i(t)'), xlabel('\omegat, degree')
 vv=axis; vv(4); yv=1.3*vv(4);
 if Q < 0
 text(0, yv, ['Complex power S = ', num2str(P), ' -j ', abs(num2str(Q)), ' VA'])
else
 text(0, yv, ['Complex power S = ', num2str(P), ' + j ', num2str(Q), ' VA'])
end
 axes(handles.praxes) % Select the proper axes
plot(wt, pr, 'm', wt, PP, 'm', wt0, xline, 'k'), grid

if thetav < 0 
title(['      pr(t)=',num2str(P),'[1+cos2(\omegat  ', num2str(thetav),')]','       P=', num2str(P),' W'])
else
title(['      pr(t)=',num2str(P),'[1+cos2(\omegat + ', num2str(thetav),')]','       P=', num2str(P),' W'])
end
xlabel('\omegat, deree')   

axes(handles.pxaxes) % Select the proper axes
plot(wt, px, 'm', wt0, xline,'k'), grid
if thetav < 0 
title(['      px(t)=',num2str(Q),'sin2(\omegat  ', num2str(thetav),')','         Q=', num2str(Q),' Var'])
else
title(['      px(t)=',num2str(Q),'sin2(\omegat + ', num2str(thetav),')','         Q=', num2str(Q),' Var'])
end

xlabel('\omegat, degree')



% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)

figure(chp2ex1Info)
% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
close all