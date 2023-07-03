function varargout = chp2ex6gui(varargin)
% CHP2EX6GUI Application M-file 
%    FIG = CHP2EX6GUI launch PowerDir GUI.
%    CHP2EX6GUI('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 01-Apr-2002 20:20:48

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

% --------------------------------------------------------------------
axes(handles.Cktaxes1)    % Select the proper axes

x1=[-.2  -.2 .325   .35   .40  .45  .50  .55  .60  .625   .70];
y1=[0.6  1.0  1.0    1.05  .95  1.05  .95  1.05 .95  1       1 ];
x2=[-.2  -.2  1.5  1.5];
y2=[0.4  0    0    .4];

th=0:.005:2*pi;
x=-.2+0.1*cos(th);
y=0.5 +0.1*sin(th);
tho=0:.005:pi;
xo=0.05*cos(tho);
yo= 1 +.05*sin(tho);
xla=0.75+xo;
xlb=0.85+xo;
xlc=0.95+xo;
xl1=[1  1.5  1.5]; 
%xl1=[1  1.1  1.1]; 
yl1=[1   1   0.6];
xl2=[0.8  .8]; yl2=[0.7 1];
xc1=[1.05  1.15]; yc1=[0.45  0.45]; yc2=[0.55 0.55];
plot(x1, y1,'b', x2,y2,'b','erasemode','none')
hold on
plot(x,y)     %circle
plot(xla,yo),plot(xlb, yo), 
plot(xlc, yo)
plot(xl1,yl1,'b')  % vertical line
plot(x+1.7,y)     %circle
axis off
text(-.05, .5, 'V_1=|V_1|\angle\delta_1')
text(.8, .5, 'V_2=|V_2|\angle\delta_2')
text(0.45, 1.15, 'R + j*X')
text(-.225,.525,'\pm')
text(1.4965,.525,'\pm')
text(1.3, 1.1,'\leftarrow', 'color',[1 0 0])
text(1.3,1.2, 'i_{21}', 'color',[1 0 0])
text(-.1,1.2,'i_{12}', 'color',[1 0 0])
text(-.1, 1.1,'\rightarrow', 'color',[1 0 0])
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
function varargout = slider1_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
NewVal = get(h,'Value');
set(handles.edita1Min,'String',NewVal);

function varargout = edita1Min_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = slider2_Callback(h, eventdata, handles, varargin)
NewVal = get(h,'Value');
set(handles.edita1Max,'String',NewVal);

% --------------------------------------------------------------------
function varargout = edita1Max_Callback(h, eventdata, handles, varargin)


% --------------------------------------------------------------------
function varargout = editdel_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = slider3_Callback(h, eventdata, handles, varargin)
NewVal = get(h,'Value');
set(handles.X_minedit,'String',NewVal);


% --------------------------------------------------------------------
function varargout = X_minedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = slider4_Callback(h, eventdata, handles, varargin)
NewVal = get(h,'Value');
set(handles.X_maxedit,'String',NewVal);

% --------------------------------------------------------------------
function varargout = X_maxedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = dvedit_Callback(h, eventdata, handles, varargin)



% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)





axes(handles.Paxes2)    % Select the proper axes

E1Handle=findobj('Tag','E1edit');
E1=eval(get(E1Handle,'String'));
E2Handle=findobj('Tag','E2edit');
E2=eval(get(E2Handle,'String'));
a1Handle=findobj('Tag','a1edit');
a1=eval(get(a1Handle,'String'));
a2Handle=findobj('Tag','a2edit');
a2=eval(get(a2Handle,'String'));
delta1=a1; delta2=a2;
ZHandle=findobj('Tag','Zedit');
Z=eval(get(ZHandle,'String'));

delHandle=findobj('Tag','editdel');
del=eval(get(delHandle,'String'));
a1MinHandle=findobj(gcbf,'Tag','edita1Min');
a1Min=eval(get(a1MinHandle,'String'));
Min= get(handles.slider1,'Min'); Max= get(handles.slider1,'Max');
if a1Min < Min
    a1Min=Min;
else
end
if a1Min > Max
    a1Min =Max;
else
end
set(handles.edita1Min,'String',a1Min);
a1MaxHandle=findobj(gcbf,'Tag','edita1Max');
a1Max=eval(get(a1MaxHandle,'String'));
Min= get(handles.slider2,'Min'); Max= get(handles.slider2,'Max');
if a1Max < Min
    a1Max=Min;
else
end
if a1Max > Max
    a1Max =Max;
else
end
set(handles.edita1Max,'String',a1Max);

a1=(a1Min:del:a1Max)';

a1r = a1*pi/180;                       % convert degree to radian
k=length(a1);
a2=ones(k,1)*a2;        % create col. array of same length for a2
a2r = a2*pi/180;                       % convert degree to radian
V1=E1.*cos(a1r) + j*E1.*sin(a1r);
V2=E2.*cos(a2r) + j*E2.*sin(a2r);
I12 = (V1 - V2)./Z;  I21=-I12;
S1= V1.*conj(I12);  P1 = real(S1);  Q1 = imag(S1);
S2= V2.*conj(I21);  P2 = real(S2);  Q2 = imag(S2);
SL= S1+S2;        PL = real(SL);  QL = imag(SL);
Result1=[a1, P1,  P2, PL];
disp('  ')
fprintf('\t delta_1 \t  \t  P_1  \t \t  \t  P_2 \t \t \t  P_L \n')
fprintf('\t %6.2f \t %10.3f \t %10.3f \t %10.3f\n', Result1')
plot(a1, P1,  a1, P2,  a1, PL), grid
%text(-26, -550, 'P_1'), text(-26, 600,'P_2'), text(-26, 115, 'P_L')
legend('P_1', 'P_2', 'P_L', 1)
xlabel('Source #1 Voltage Phase Angle, \delta_1'), ylabel('P, Watts')

title([' |V_1| = ',num2str(E1), '     |V_2| = ', num2str(E2) ,'    \delta_2 = ', num2str(delta2), '    \delta_1 is changed from ', num2str(a1Min), ' to ', num2str(a1Max)])



% --------------------------------------------------------------------
%function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)

axes(handles.Qaxes3)    % Select the proper axes
E1Handle=findobj('Tag','E1edit');
E1=eval(get(E1Handle,'String'));
E2Handle=findobj('Tag','E2edit');
E2=eval(get(E2Handle,'String'));
E1C=E1;  E2C=E2;
a1Handle=findobj('Tag','a1edit');
a1=eval(get(a1Handle,'String'));
a2Handle=findobj('Tag','a2edit');
a2=eval(get(a2Handle,'String'));
ZHandle=findobj('Tag','Zedit');
Z=eval(get(ZHandle,'String'));


X_minHandle=findobj('Tag','X_minedit');
X_min=eval(get(X_minHandle,'String'));
X_maxHandle=findobj('Tag','X_maxedit');
X_max=eval(get(X_maxHandle,'String'));
dvHandle=findobj('Tag','dvedit');
dv=eval(get(dvHandle,'String'));
Min= get(handles.slider3,'Min'); Max= get(handles.slider3,'Max');
if X_min < Min
    X_min=Min;
else
end
if X_min > Max
    X_min =Max;
else
end
set(handles.X_minedit,'String', X_min);

X_maxHandle=findobj(gcbf,'Tag','X_maxedit');
X_max=eval(get(X_maxHandle,'String'));
Min= get(handles.slider4,'Min'); Max= get(handles.slider4,'Max');
if X_max < Min
    X_max=Min;
else
end
if X_max > Max
    X_max =Max;
else
end
set(handles.X_maxedit,'String', X_max);


% line impedance
E1 = (X_min/100*E1:dv:E1*X_max/100)';          % Change E1 form 75% to 1oo% E1
a1r = a1*pi/180;                    % convert degree to radian
k = length(E1);
E2 = ones(k,1)*E2;   % create col. array of same length for E2
a2r = a2*pi/180;                    % convert degree to radian
V1=E1.*cos(a1r) + j*E1.*sin(a1r);
V2=E2.*cos(a2r) + j*E2.*sin(a2r);
I12 = (V1 - V2)./Z;  I21=-I12;
S1= V1.*conj(I12);  P1 = real(S1);  Q1 = imag(S1);
S2= V2.*conj(I21);  P2 = real(S2);  Q2 = imag(S2);
SL= S1+S2;        PL = real(SL);  QL = imag(SL);
Result2=[E1, Q1,  Q2, QL];
%disp('           E1         Q-1          Q-2         Q-L ')
%disp(Result1)

fprintf('\n\n \t   V_1 \t  \t      Q_1  \t \t  \t  Q_2 \t \t \t  Q_L \n')
fprintf('\t %6.2f \t %10.3f \t %10.3f \t %10.3f\n', Result2')

plot(E1, Q1,  E1, Q2,  E1, QL), grid
xlabel(' Source #1 Voltage Magnitude'), ylabel(' Q,  var')
%text(112.5, -180, 'Q2')
%text(112.5,  5,'QL'), text(112.5, 197, 'Q1')
legend('Q_1', 'Q_2', 'Q_L', 1)
title([' \delta_1 = ',num2str(delta1), '     |V_2| = ', num2str(E2C) ,'    \delta_2 = ', num2str(delta2), '    |V_1| is changed from ', num2str(X_min*E1C/100), ' to ', num2str(X_max*E1C/100)])
% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)

figure(chp2ex6Info)
% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
close all





