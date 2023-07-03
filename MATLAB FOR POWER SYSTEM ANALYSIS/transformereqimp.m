function varargout = Transformer2wImp(varargin)
% TRANSFORMEREQIMP Application M-file for TransformerTests.fig
%    FIG = TRANSFORMEREQIMP launch TransformerTests GUI.
%    TRANSFORMEREQIMP('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 26-May-2002 15:07:42

if nargin == 0  % LAUNCH GUI
fig = openfig(mfilename,'new');
% Use system color scheme for figure:
% Generate a structure of handles to pass to callbacks, and store it. 
handles = guihandles(fig);
guidata(fig, handles); 
    
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

% Transformer Equivalent Circuits

% --------------------------------------------------------------------
function varargout = SText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = E_pText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = E_sText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = V2mText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = S2mText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = PfText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = R_eqText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = X_eqText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = R_cText_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = X_mText_Callback(h, eventdata, handles, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = LvZ_eq_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
LvZ_eqHandle=findobj(gcbf, 'Tag','LvZ_eq');
LvZ_eq=get(LvZ_eqHandle,'Value');
HvZ_eqHandle=findobj(gcbf, 'Tag','HvZ_eq');
HvZ_eq=get(HvZ_eqHandle,'Value');
if LvZ_eq==1
   HvZ_eq=0;
   set(LvZ_eqHandle, 'Value', 1), on = (handles.LvZ_eq);
   set(HvZ_eqHandle,'Value', 0), off = (handles.HvZ_eq);
elseif LvZ_eq==0
   HvZ_eq=1;
   set(LvZ_eqHandle, 'Value', 0), off = (handles.LvZ_eq);
   set(HvZ_eqHandle,'Value', 1),  on =  (handles.HvZ_eq);
end   


function varargout = HvZ_eq_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
LvZ_eqHandle=findobj(gcbf, 'Tag','LvZ_eq');
LvZ_eq=get(LvZ_eqHandle,'Value');
HvZ_eqHandle=findobj(gcbf, 'Tag','HvZ_eq');
HvZ_eq=get(HvZ_eqHandle,'Value');
if HvZ_eq==1
   LvZ_eq=0;
   set(HvZ_eqHandle, 'Value', 1), on = (handles.HvZ_eq);
   set(LvZ_eqHandle,'Value', 0), off = (handles.LvZ_eq);
elseif HvZ_eq==0;
   LvZ_eq=1;
   set(HvZ_eqHandle, 'Value', 0), off = (handles.HvZ_eq);
   set(LvZ_eqHandle,'Value', 1),  on =  (handles.LvZ_eq);  
end   


function varargout = LvZ_shunt_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------

LvZ_shuntHandle=findobj(gcbf, 'Tag','LvZ_shunt');
LvZ_shunt=get(LvZ_shuntHandle,'Value');
HvZ_shuntHandle=findobj(gcbf, 'Tag','HvZ_shunt');
HvZ_shunt=get(HvZ_shuntHandle,'Value');
if LvZ_shunt==1
   HvZ_shunt=0;
   set(LvZ_shuntHandle, 'Value', 1), on  = (handles.LvZ_shunt);
   set(HvZ_shuntHandle, 'Value', 0), off = (handles.HvZ_shunt);
elseif LvZ_shunt ==0
    HvZ_shunt =1;
   set(LvZ_shuntHandle, 'Value', 0), off  = (handles.LvZ_shunt);
   set(HvZ_shuntHandle, 'Value', 1), on = (handles.HvZ_shunt);
end   

function varargout = HvZ_shunt_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
LvZ_shuntHandle=findobj(gcbf, 'Tag','LvZ_shunt');
LvZ_shunt=get(LvZ_shuntHandle,'Value');
HvZ_shuntHandle=findobj(gcbf, 'Tag','HvZ_shunt');
HvZ_shunt=get(HvZ_shuntHandle,'Value');
if HvZ_shunt==1
   LvZ_shunt=0;
   set(HvZ_shuntHandle, 'Value', 1), on  = (handles.HvZ_shunt);
   set(LvZ_shuntHandle, 'Value', 0), off = (handles.LvZ_shunt);
elseif HvZ_shunt ==0
    LvZ_shunt =1;
   set(HvZ_shuntHandle, 'Value', 0), off = (handles.HvZ_shunt);
   set(LvZ_shuntHandle, 'Value', 1),  on = (handles.LvZ_shunt);
end   

function varargout = Lag_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
LagHandle=findobj(gcbf, 'Tag','Lag');
Lg=get(LagHandle,'Value');
LeadHandle=findobj(gcbf, 'Tag','Lead');
Ld=get(LeadHandle,'Value');
if Lg==1
   Ld=0;
   set(LagHandle, 'Value', 1), on = (handles.Lag);
   set(LeadHandle,'Value', 0), off = (handles.Lead);
elseif Lg==0
    Ld=1;
  set(LagHandle, 'Value', 0), off = (handles.Lag);
   set(LeadHandle,'Value', 1),  on = (handles.Lead);
end   
function varargout = Lead_Callback(h, eventdata, handles, varargin)
LagHandle=findobj(gcbf, 'Tag','Lag');
Lg=get(LagHandle,'Value');
LeadHandle=findobj(gcbf, 'Tag','Lead');
Ld=get(LeadHandle,'Value');

if Ld==1
   Lg=0;
   set(LeadHandle, 'Value', 1), on = (handles.Lead);
   set(LagHandle,'Value', 0), off = (handles.Lag);
elseif Ld==0
    Lg=1;
  set(LeadHandle, 'Value', 0), off = (handles.Lead);
   set(LagHandle,'Value', 1),  on = (handles.Lag);
end   




% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
global Rclv Xmlv  Rchv  Xmhv  Zelv  Zehv  Error




Error = 0;
% Transformer rated values
E_pHandle=findobj(gcbf, 'Tag','E_pText');
E_p=eval(get(E_pHandle,'String'));
E_sHandle=findobj(gcbf, 'Tag','E_sText');
E_s=eval(get(E_sHandle,'String'));
if E_p > E_s
   StDwn = 1; StUp=0;
   Elv=E_s; Ehv=E_p;
elseif E_p < E_s
   StUp = 1; StDwn=0;
   Elv=E_p; Ehv=E_s;
else, end
LvZ_eqHandle=findobj(gcbf, 'Tag','LvZ_eq');
LvZ_eq=get(LvZ_eqHandle,'Value');
HvZ_eqHandle=findobj(gcbf, 'Tag','HvZ_eq');
HvZ_eq=get(HvZ_eqHandle,'Value');
R_eqHandle=findobj(gcbf, 'Tag','R_eqText');
R_eq=eval(get(R_eqHandle,'String'));
X_eqHandle=findobj(gcbf, 'Tag','X_eqText');
X_eq=eval(get(X_eqHandle,'String'));

LvZ_shuntHandle=findobj(gcbf, 'Tag','LvZ_shunt');
LvZ_shunt=get(LvZ_shuntHandle,'Value');
HvZ_shuntHandle=findobj(gcbf, 'Tag','HvZ_shunt');
HvZ_shunt=get(HvZ_shuntHandle,'Value');
R_cHandle=findobj(gcbf, 'Tag','R_cText');
R_c=eval(get(R_cHandle,'String'));
X_mHandle=findobj(gcbf, 'Tag','X_mText');
X_m=eval(get(X_mHandle,'String'));

if LvZ_eq == 1
   Relv = R_eq; Xelv=X_eq;
   Rehv= R_eq*(Ehv/Elv)^2; Xehv= X_eq*(Ehv/Elv)^2; 
   Zelv=Relv+j*Xelv; Zehv=Rehv+j*Xehv;
elseif HvZ_eq==1
   Rehv = R_eq; Xehv=X_eq;
   Relv= R_eq*(Elv/Ehv)^2; Xelv= X_eq*(Elv/Ehv)^2; 
   Zelv=Relv+j*Xelv; Zehv=Rehv+j*Xehv;
else, end
if LvZ_shunt == 1
   Rclv = R_c; Xmlv=X_m;
   Rchv= R_c*(Ehv/Elv)^2; Xmhv= X_m*(Ehv/Elv)^2; 
elseif HvZ_shunt==1
   Rchv = R_c; Xmhv=X_m;
   Rclv= R_c*(Elv/Ehv)^2; Xmlv= X_m*(Elv/Ehv)^2; 
else, end

PushPHandle=findobj(gcbf, 'Tag','pushbuttonPerf');
V2mHandle=findobj(gcbf, 'Tag','V2mText');
V2m=get(V2mHandle,'Value');
S2mHandle=findobj(gcbf, 'Tag','S2mText');
S2m=get(S2mHandle,'Value');
PfHandle=findobj(gcbf, 'Tag','PfText');
pf=get(PfHandle,'Value');
LagHandle=findobj(gcbf, 'Tag','Lag');
LeadHandle=findobj(gcbf, 'Tag','Lead');
LeadHandle=findobj(gcbf, 'Tag','Lead');
LoadVTextHandle=findobj(gcbf, 'Tag', 'LoadVText');
LoadSTextHandle=findobj(gcbf, 'Tag', 'LoadKVAText');
LoadPfTextHandle=findobj(gcbf, 'Tag', 'LoadPfText');
V2TextHandle=findobj(gcbf, 'Tag', 'V2Text');
SLTextHandle=findobj(gcbf, 'Tag', 'SLText');
PfTextHandle=findobj(gcbf, 'Tag', 'LoadPfText');
framePfHandle=findobj(gcbf, 'Tag', 'framePf');
set(V2mHandle, 'visible', 'on');
set(S2mHandle, 'visible', 'on');
set(PfHandle, 'visible', 'on');
set(LagHandle, 'visible', 'on');
set(LeadHandle, 'visible', 'on');
set(LoadVTextHandle, 'visible', 'on');
set(LoadSTextHandle, 'visible', 'on');
set(LoadPfTextHandle, 'visible', 'on');
set(V2TextHandle, 'visible', 'on');
set(SLTextHandle, 'visible', 'on');
set(PfTextHandle, 'visible', 'on');
set(framePfHandle, 'visible', 'on');
set(PushPHandle, 'visible', 'on');

axes(handles.EqCktAxes3)    % Select the proper axes
hrst2=gca;
cla(hrst2)
%if Error == 1
  %plot(0, 0), axis off
   %text(-.6, .6,['Data error:  I_c = ', num2str(Ic), ',  I_o = ', num2str(Io), '  \Rightarrow I_c > I_0'], 'color', [1 0 0], 'erasemode','xor')
   %text(-.6, .3, 'Inconsistent test data. Correct test data and try again', 'color', [1 0 0], 'erasemode','xor');
   %elseif Error == 2
   %plot(0, 0), axis off
   %text(-.6, .6,['Data error:  R_e = ', num2str(Re), ',  |Z_e| = ', num2str(Zemag), '  \Rightarrow R_e > |Z_e|'], 'color', [1 0 0], 'erasemode','xor')
   %text(-.6, .3, 'Inconsistent test data. Correct test data and try again','color',[1 0 0], 'erasemode','xor');
   %else end

%E_pHandle=findobj(gcbf, 'Tag','E_pText');
%E_p=eval(get(E_pHandle,'String'));
%E_sHandle=findobj(gcbf, 'Tag','E_sText');
%E_s=eval(get(E_sHandle,'String'));
%if E_p > E_s
%   StDwn = 1; StUp=0;
%   Elv=E_s; Ehv=E_p;
%elseif E_p < E_s
%   StUp = 1; StDwn=0;
 %  Elv=E_p; Ehv=E_s;
 %else, end
x1=[-0.2  .65 .7     .80  0.9   1.0   1.1   1.2   1.25  1.375  ];
y1=[1.2   1.2  1.3    1.1  1.3   1.1   1.3    1.1   1.2  1.2];
x3 = [1.975  2.4 2.4];
y3 = [1.2 1.2  .9];
x4 = [2.4  2.4 -.2  ];
y4 = [ .3  0   0   ];
ths = 0:.0025:pi;
xs1 =1.45+0.075*cos(ths);
ys1 = 1.2 +0.075*sin(ths);
xs2 =1.6+0.075*cos(ths);
xs3 =1.75+0.075*cos(ths);
xs4 =1.9+0.075*cos(ths);
x5 = [0.75 0.75 .8];
y5 =[1.2 1.0 1.0];
x6 = [1.1 1.3 1.3];
y6 = [1.0 1.0  0];
xw = [0.65  0.65  1.4  1.4  0.65];
yw = [0.95  1.35  1.35  0.95  0.95];
tho=-pi/2:.0025:pi/2;
xo=2.4+0.1*cos(tho);
yo=.1*sin(tho);
xt1=[xo     xo      xo] ;
yt1=[.4+yo 0.6+yo 0.8+yo];
xo2=3.0 -0.1*cos(tho);
yo2=.1*sin(tho);
xt2=[xo2     xo2      xo2] ;
yt2=[.4+yo2 0.6+yo2 0.8+yo2];
xt3 = [3.0  3.0 3.6];
yt3 = [0.9  1.2  1.2];
xt4 = [3.0  3.0  3.6];
yt4 = [ .3  0   0];
xc1=[2.65 2.65 ];
xc2=[2.75 2.75];
yc1=[.4  .8];
% R_c
xr=[.5   .5   .3   .3   .35  .25   .35   .25   .35   .25   .35   .25   .3  .3  .5  .5];
yr=[1.2   1     1  .775 .75  .7    .65   .60   .55   .50   .45   .40   .375 .2 .2  0];
% X_m
thm=-pi/2:.0025:pi/2;
xm=0.7+0.05*cos(thm);
ym=.05*sin(thm);
xxm=[xm     xm      xm  xm] ;
yxm=[.4+ym 0.5+ym 0.6+ym 0.7+ym];
xv1=[.3  .7  .7];
yv1=[1   1   .75];
xv2=[.5  .5  .7 .7 ];
yv2=[0  .2   .2  .35];

% Open Circuit
plot(x1, y1,'b', x3, y3, 'b', x4, y4, 'b', 'erasemode','none')
axis('equal')
axis off
hold on
plot(xs1,ys1,'b', xs2,ys1, 'b', xs3,ys1,'b', xs4, ys1,'b') 
plot(xt1, yt1, 'b', xt2, yt2, 'b', xt3, yt3 ,'b', xt4, yt4, 'b')
plot(xc1, yc1, 'b', xc2, yc1, 'b')
plot(xr, yr, 'b')
plot(xxm, yxm, 'b')
plot(xv1, yv1,'b', xv2, yv2, 'b')
text(-.265,1.1625, '\circ', 'color', [0 0 1])
text(-.265,-.0375, '\circ', 'color', [0 0 1])
text(-.3, .8, 'V_1', 'Fontsize', 8, 'color', [0 0 .675])
text(0, .35, 'R_{c1}', 'Fontsize', 8, 'color', [0 0 .675])
text(.8, .35, 'jX_{m1}', 'Fontsize', 8, 'color', [0 0 .675])
text(1, .95, 'R_{e1} + j x_{e1}', 'Fontsize', 8, 'color', [0 0 .675])
text(3.1, .6, 'S_{Load}', 'Fontsize', 8, 'color', [0 0 .675])
text(3.75, .6, 'V_2', 'Fontsize', 8, 'color', [0 0 .675])

text(4.35, .6, 'V_1', 'Fontsize', 8, 'color', [0 0 .675])
text(6.8, .35, 'R_{c2}', 'Fontsize', 8, 'color', [0 0 .675])
text(7.6, .35, 'jX_{m2}', 'Fontsize', 8, 'color', [0 0 .675])
text(7.8, .95, 'R_{e2} + j x_{e2}', 'Fontsize', 8, 'color', [0 0 .675])
text(8.75, .6, 'S_{Load}', 'Fontsize', 8, 'color', [0 0 .675])
text(9.3, .6, 'V_2', 'Fontsize', 8, 'color', [0 0 .675])


%%%%%%%%
%Secondary
plot(6.8+x1, y1,'b', 6.8+x3, y3, 'b', 6.8+x4, y4, 'b', 'erasemode','none')
plot(6.8+xs1,ys1,'b', 6.8+xs2,ys1, 'b', 6.8+xs3,ys1,'b', 6.8+xs4, ys1,'b') 
plot(6.8+xr, yr, 'b')
plot(6.8+xxm, yxm, 'b')
plot(6.8+xv1, yv1,'b', 6.8+xv2, yv2, 'b')
xt1=[2.6+xo   2.6+xo   2.6+xo] ;
yt1=[.4+yo .6+yo .8+yo];
xt2=[2.6+xo2    2.6+xo2    2.6+xo2] ;
yt2=[.4+yo2 .6+yo2 .8+yo2];
plot(xt1, yt1, 'b', xt2, yt2,'b')
x9=[5.6  5.6  6.6];
y9=[.9  1.2 1.2 ];y8=[0.3 0  0];
x11=[4.4  5  5];
y11=[1.2 1.2 .9]; y10=[0 0 0.3];
plot(x9, y9, 'b',x9, y8,'b', x11, y11, 'b', x11, y10,'b')
plot(2.6+xc1, yc1, 'b', 2.6+xc2, yc1, 'b')
text(4.355,1.1625, '\circ', 'color', [0 0 1])
text(4.355,-.0375, '\circ', 'color', [0 0 1])
%Load
x12=[3.6  3.6];
y12=[1.2  .9];
y13=[0  .3];
plot(x12, y12, 'b', x12, y13,'b')
xLd=[3.55  3.55  3.65  3.65  3.55];
yLd=[.3    .9     .9    .3    .3];
plot(xLd, yLd, 'b', xLd+5.6, yLd,'b')

if StDwn==1
   text(-.4, .6, [num2str(Rchv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(.8, .6,  ['j',num2str(Xmhv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(6.4, .6, [num2str(Rclv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(7.6, .6, ['j',num2str(Xmlv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(2.4, -.15, [num2str(Ehv),'/', num2str(Elv)],'Fontsize',8, 'color', [0 0 0.675])
   text(5, -.15, [num2str(Ehv),'/', num2str(Elv)],'Fontsize',8, 'color', [0 0 0.675])
   text(.8, 1.4, [num2str(real(Zehv)), ' + j ', num2str(imag(Zehv)), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(7.4, 1.4, [num2str(real(Zelv)), ' + j ', num2str(imag(Zelv)), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
      
  
elseif StUp==1
   text(-.4, .6, [num2str(Rclv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(.8, .6,  ['j',num2str(Xmlv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(6.4, .6, [num2str(Rchv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(7.6, .6, ['j',num2str(Xmhv), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(2.4, -.15, [num2str(Elv),'/', num2str(Ehv)],'Fontsize',8, 'color', [0 0 0.675])
   text(5.0, -.15, [num2str(Elv),'/', num2str(Ehv)],'Fontsize',8, 'color', [0 0 0.675])
   text(.8, 1.4, [num2str(real(Zelv)), ' + j ', num2str(imag(Zelv)), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
   text(7.4, 1.4, [num2str(real(Zehv)), ' + j ', num2str(imag(Zehv)), '\Omega'], 'Fontsize',8, 'color', [1 0 0 ])
else, end
text(0, -.15, 'Equivalent circuit referred to primary', 'Fontsize',8, 'color', [0 0 0.675])
text(6.5, -.15, 'Equivalent circuit referred to secondary','Fontsize',8, 'color', [0 0 0.675])    
hold off



% --------------------------------------------------------------------
function varargout = pushbuttonPerf_Callback(h, eventdata, handles, varargin)
global Rclv Xmlv  Rchv  Xmhv  Zelv  Zehv  Error

% Transformer performance characteristics.
LvHandle=findobj(gcbf, 'Tag','Lv_SideOC');
Lv=get(LvHandle,'Value');
HvHandle=findobj(gcbf, 'Tag','Hv_SideOC');
Hv=get(HvHandle,'Value');
LvScHandle=findobj(gcbf, 'Tag','Lv_SideSC');
LvSc=get(LvScHandle,'Value');
HvScHandle=findobj(gcbf, 'Tag','Hv_SideSC');
HvSc=get(HvScHandle,'Value');
% Transformer rated vlues
E_pHandle=findobj(gcbf, 'Tag','E_pText');
E_p=eval(get(E_pHandle,'String'));
E_sHandle=findobj(gcbf, 'Tag','E_sText');
E_s=eval(get(E_sHandle,'String'));
if E_p > E_s
   StDwn = 1; StUp=0;
   Elv=E_s; Ehv=E_p;
elseif E_p < E_s; 
   StUp = 1; StDwn=0;
   Elv=E_p; Ehv=E_s;
else, end
SrHandle=findobj(gcbf, 'Tag','SText');
Sr=eval(get(SrHandle,'String'));
PfHandle=findobj(gcbf, 'Tag','PfText');
pf=eval(get(PfHandle,'String'));

S2mHandle=findobj(gcbf, 'Tag','S2mText');
S2m=eval(get(S2mHandle,'String'));
V2mHandle=findobj(gcbf, 'Tag','V2mText');
V2m=eval(get(V2mHandle,'String'));
LagHandle=findobj(gcbf, 'Tag','Lag');
Lg=get(LagHandle,'Value');
LeadHandle=findobj(gcbf, 'Tag','Lead');
Ld=get(LeadHandle,'Value');

figh=figure('Position', [600 490 750 480]);
ax1=axes('Position',[0.016  .5  .35  .47], 'color',   [0.8 .8 0.8], 'XColor', [.8 .8 0.8], 'YColor', [.8 .8 0.8]);

V2 = V2m + j*0;
pf = abs(pf);
ang2 = acos(pf);
if Ld == 1
   ang2 = -ang2; 
   elseif Lg == 1 
end
ang2d = ang2*180/pi;
stro(1) = {'Transformer rated values'}; 
stro(2) = {['Apparent Power = ', num2str(Sr), ' KVA']}; 
stro(3) = {'  '}; 
if StDwn == 1
    stro(4) = {'Primary / Secondary'};
    stro(5) = {[num2str(Ehv), '       / ', num2str(Elv)]};
Vtol= (V2- Elv)/Elv*100; Vnom=Elv;  
elseif StUp ==1
    stro(4) = {'Primary / Secondary'};
    stro(5) = {[num2str(Elv), '       /', num2str(Ehv)]};
   Vtol= (V2-Ehv)/Ehv*100; Vnom=Ehv;
else, end
RtHandle=findobj(gcbf, 'Tag','RatedText');
set(RtHandle, 'String', stro);
Error=0;
if Vtol > 25 | Vtol < -25
text(0.1, 0.7, ['Secondary nominal voltage is ', num2str(Vnom), ' V'], 'color', [1 0 0])
    if Vtol > 0
   text(0.1, 0.6, ['Load voltage is  ', num2str(abs(Vtol)), ' % greater than the rated value, correct (no more than 25 %) and solve again'], 'color',[1 0 0])
   Error=1;
    elseif Vtol < 0 
   text(0.1, 0.6, ['Load voltage is  ', num2str(abs(Vtol)), ' % less than the rated value, correct (no less than 25 %) and solve again'], 'color',[1 0 0])
   Error=1;
end
else, end
if pf > 1 
text(0.1, 0.7, 'Power factor cannot be greater than 1, enter the correct value and solve again', 'color', [1 0 0])   
Error=1;
else, end

S2 = S2m*1000*(pf + j*sin(ang2));
I2 = conj(S2)/V2;
I2m = abs(I2); angI2d = angle(I2)*180/pi;

%%%%%%%%%%%Change to Rchv=inf, etc
if Rchv ==0 | Rclv==0 |Xmlv==0 | Xmhv==0
   ax1=line(0, 0, 'erasemode', 'xor');
   text(-.9,  .1,'Data error:  You cannot enter 0 for R_c or X_m.', 'color', [1 0 0.502])
   text(-.9, -.1,'If shunt branch is neglected set their values to inf',  'color', [1 0 0.502])
   Error=1;
else, end
  
if Error~=1
if StDwn == 1
   V1r = (Ehv/Elv)*V2;       I1r = (Elv/Ehv)*I2; I1rm=abs(I1r);
   V1 = V1r + Zehv*I1r;
   V1m = abs(V1); ang1 = angle(V1); ang1d = ang1*180/pi;
   if Rchv == inf , Ior = 0;
    else, Ior= V1m/Rchv; end
      if Xmhv == inf , Ioi = 0;
      else, Ioi= V1m/Xmhv;end
   Io = Ior -j*Ioi;
   I1 = I1r + Io;
   Pcu = real(Zehv)*I1rm^2;
   Pi = Ehv^2/Rchv;
elseif StUp==1
    V1r = (Elv/Ehv)*V2; I1r = (Ehv/Elv)*I2; I1rm = abs(I1r);
    V1 = V1r + Zelv*I1r;
    V1m = abs(V1); ang1 = angle(V1); ang1d = ang1*180/pi;
    if Rclv == inf | Rclv == 0, Ior = 0;
         else, Ior= V1m/Rclv; end
         if Xmlv == inf | Xmlv == 0, Ioi = 0;
         else, Ioi= V1m/Xmlv;end
   Io = Ior -j*Ioi;
   I1 = I1r + Io;
   Pcu = real(Zelv)*I1rm^2;
   Pi = Elv^2/Rclv;
end

I1rm = abs(I1r);
Iom = abs(Io); angIod = angle(Io)*180/pi;
I1m = abs(I1); angI1d = angle(I1)*180/pi;
VR = (V1m - abs(V1r))/abs(V1r)*100;
eff = (S2m*1000*pf)/(S2m*1000*pf+Pi+Pcu)*100;
if Pi~=0
Smax = sqrt(Pi/Pcu)*S2m;
effmax = (Smax*1000*pf)/(Smax*1000*pf+Pi+Pi)*100;
else, end
Sl = 0.25*Sr:.005*Sr:1.25*Sr;
PCU = (Pcu/S2m^2)*Sl.^2;
Po = pf*Sl;
PI = Pi*ones(1,length(Sl));
EFF = 1000*Po./(1000*Po+PI+PCU)*100;
ol=(S2m-Sr)/Sr*100;
if S2m > Sr 
   str1(1) = {['Transformer is overloded by ', num2str(ol), ' %']};
elseif S2m <= Sr, str1(1) = {'      '};  
   else,end
if Lg==1 & pf ~=1
str1(2) = {['S_L = ',  num2str(S2m),' KVA, ',num2str(pf), ' lagging power factor']}; 
elseif Ld ==1 & pf~=1
str1(2) = {['S_L = ',  num2str(S2m),' KVA, ',num2str(pf), ' leading power factor']}; 
elseif pf==1
str1(2) = {['S_L = ',  num2str(S2m),' KVA, unity power factor']}; 
else, end
str1(3) = {['V_2  = ', num2str(V2m), ' \angle 0 V']}; 
str1(4) = {['I_2   = ', num2str(I2m), ' \angle', num2str(angI2d),' A']}; 
str1(5) = {['{I_2}\prime  = ', num2str(I1rm), ' \angle', num2str(angI2d),' A']}; 
str1(6) = {['{I_{0 1}} = ', num2str(Iom), ' \angle', num2str(angIod),' A']}; 
str1(7) = {['{I_1}   = ', num2str(I1m), ' \angle', num2str(angI1d),' A']}; 
str1(8) = {['V_1  = ', num2str(V1m), ' \angle', num2str(ang1d),' V']}; 
str1(9) = {['Reg = ', num2str(VR), ' %']}; 
str1(10) = {['\eta    = ', num2str(eff), ' %']}; 
str1(11) = {'  '}; 
if Pi~=0
str2(1) = {['\eta_{max} = ', num2str(effmax), ' % Occurs at']};
str2(2) = {[' S_{max} = ', num2str(Smax), 'KVA', ' & Pf = ',  num2str(pf)]};    
else, end
ax1=line(0, 0, 'erasemode', 'xor');
text(-.9, 0.05,    str1, 'fontname','Time', 'FontSize', 12,  'color', [0 0 0.5])

if Pi~=0
%text(-.9, -1.1,    str2, 'fontname','Time', 'FontSize', 12,  'color', [.8  0 0])
text(-.9, -1.2,    str2, 'fontname','Time', 'FontSize', 12,  'color', [.8  0 0])

else, end
ax2=axes('Position',[0.4  .15  .55  .75], 'XColor', [0 0 .5], 'YColor', [0 0 .5]);

ax2=line(Po, EFF, 'color', [1  0  0]); grid
title(['Transformer Efficiency, pf = ', num2str(pf)], 'color', [0  0  0.5], 'erasemode', 'xor')
xlabel('Output power, kW', 'color', [0  0  0.5],'erasemode', 'xor')
ylabel('\eta %', 'color', [0  0  0.5], 'erasemode', 'xor')
line([Sr*pf, Sr*pf], [min(EFF), eff], 'linestyle', '--')
KW=Sr*pf;
text(Sr*pf*.6, eff*.9997, ['Rated P = ', num2str(KW), ' KW'], 'Color', 'b')
else, end

drawnow 






% --------------------------------------------------------------------
function varargout = pushbuttonExit_Callback(h, eventdata, handles, varargin)
close(gcbf)
