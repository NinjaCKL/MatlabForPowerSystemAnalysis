function varargout = DoubleCircuitsV(varargin)
% DOUBLECIRCUITSV Application M-file for SingleCircuit.fig
%    FIG = DOUBLECIRCUITSV launch SingleCircuit GUI.
%    DOUBLECIRCUITSV('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 18-Mar-2002 15:57:22

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');
	
	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.doubleCktAxes2) % Select the proper axes
r=.5;
th=0:.01:2*pi;
x=r*cos(th); y=r*sin(th);
plot(x+5,y+25,'b', x+16, y+25,'r')
hold on
%%grid
plot(x+3, y+15, 'b', x+18, y+15 , 'r')
plot(x+7, y+7, 'b', x+14, y+7 , 'r')


plot([10.5, 10.5],[3, 5.75],'-.')
plot([10.5, 10.5],[8, 14.],'-.')
plot([10.5, 10.5],[16, 24],'-.')

plot([10.5, 10.5],[26, 27],'-.')

axis('equal')
axis([0, 26, 1 ,26])
quiver(8.5,25, -3.5,0,'b'), quiver(12.5, 25, 3.5,0,'b')
text(10, 25,'S_{11}', 'Color', 'b')
quiver(6.5,15, -3.5,0,'b'), quiver(14.5, 15, 3.5,0,'b')
text(10, 15,'S_{22}', 'Color', 'b')
quiver(9,7, -2,0,'b'), quiver(12, 7, 2,0,'b')
text(10, 7,'S_{33}', 'Color','b')
quiver(5, 21.5, 0, 3.5 ,'m'), quiver(5, 18, 0 ,-3.5,'m')
text(4.5, 20,'H_{12}','Color', 'm')
quiver(7, 12, 0, 3.5 , 'm'), quiver(7, 10.5, 0 ,-3.5,'m')
text(6.5, 11,'H_{23}', 'Color', 'm')
text(3.5,25,'a', 'Color','b'), text(17,25,'c\prime', 'Color', 'r'), text(18,25,'a\prime', 'Color', 'b') 
text(1.5, 15,'b', 'Color','b'), text(19, 15,'b\prime', 'Color', 'r'), text(20, 15,'b\prime', 'Color', 'b') 
text(5.5, 7, 'c', 'Color','b'), text(15, 7, 'a\prime', 'Color', 'r'), text(16, 7, 'c\prime', 'Color', 'b'), 
 axis off
  
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

%axes(handles.ResultAxes)    % Select the proper axes


% --------------------------------------------------------------------
function varargout = MeterEdit_Callback(h, eventdata, handles, varargin)
Fhandle=findobj(gcbf,'Tag','FootEdit');
F=get(Fhandle,'Value');
Mhandle=findobj(gcbf,'Tag','MeterEdit');
M=get(Mhandle,'Value');
if M==1
   F=0;
   set(Mhandle, 'Value', 1);  on = (handles.MeterEdit);
   set(Fhandle, 'Value', 0);  off =(handles.FootEdit);
  else 
   set(Mhandle, 'Value', 0); off = (handles.MeterEdit);
   set(Fhandle, 'Value', 1) ; on = (handles.FootEdit);
end  
% --------------------------------------------------------------------
function varargout = FootEdit_Callback(h, eventdata, handles, varargin)
Mhandle=findobj(gcbf,'Tag','MeterEdit');
M=get(Mhandle,'Value');
Fhandle=findobj(gcbf,'Tag','FootEdit');
F=get(Fhandle,'Value');
if F==1
    M=0;
    set(Fhandle, 'Value', 1);  on = (handles.FootEdit);
    set(Mhandle, 'Value', 0);  off =(handles.MeterEdit);
    
 else 
    set(Fhandle, 'Value', 0);  off = (handles.FootEdit);
    set(Mhandle, 'Value', 1);  on  =(handles.MeterEdit);
   
  M=1; 
end 
% --------------------------------------------------------------------
function varargout = nph1Edit_Callback(h, eventdata, handles, varargin)
nph1handle=findobj(gcbf,'Tag','nph1Edit');
nph1=get(nph1handle,'Value');
nph2handle=findobj(gcbf,'Tag','nph2Edit');
nph2=get(nph2handle,'Value');
if nph1==1
    nph2=0;
    set(nph1handle, 'Value', 1);  on = (handles.nph1Edit);
    set(nph2handle, 'Value', 0);  off =(handles.nph2Edit);
    
 else 
    set(nph1handle, 'Value', 0);  off = (handles.nph1Edit);
    set(nph2handle, 'Value', 1);  on  =(handles.nph2Edit);
end 
% --------------------------------------------------------------------
function varargout = nph2Edit_Callback(h, eventdata, handles, varargin)
nph1handle=findobj(gcbf,'Tag','nph1Edit');
nph1=get(nph1handle,'Value');
nph2handle=findobj(gcbf,'Tag','nph2Edit');
nph2=get(nph2handle,'Value');
if nph2==1
    nph1=0;
    set(nph2handle, 'Value', 1);  on = (handles.nph2Edit);
    set(nph1handle, 'Value', 0);  off =(handles.nph1Edit);
    
 else 
    set(nph2handle, 'Value', 0);  off = (handles.nph2Edit);
    set(nph1handle, 'Value', 1);  on  =(handles.nph1Edit);
   
  nph1=1; 
end 


% --------------------------------------------------------------------
function varargout = CmEdit_Callback(h, eventdata, handles, varargin)
Cmhandle=findobj(gcbf,'Tag','CmEdit');
Cm=get(Cmhandle,'Value');
Inhandle=findobj(gcbf,'Tag','InEdit');
In=get(Inhandle,'Value');
if Cm==1
   In=0;
   set(Cmhandle, 'Value', 1);  on = (handles.CmEdit);
   set(Inhandle, 'Value', 0);  off =(handles.InEdit); 
  else 
   set(Cmhandle, 'Value', 0); off = (handles.CmEdit);
   set(Inhandle, 'Value', 1) ; on = (handles.InEdit);
end  

% --------------------------------------------------------------------
function varargout = InEdit_Callback(h, eventdata, handles, varargin)
Cmhandle=findobj(gcbf,'Tag','CmEdit');
Cm=get(Cmhandle,'Value');
Inhandle=findobj(gcbf,'Tag','InEdit');
In=get(Inhandle,'Value');
if In==1
    Cm=0;
    set(Inhandle, 'Value', 1);  on = (handles.InEdit);
    set(Cmhandle, 'Value', 0);  off =(handles.CmEdit);
    
 else 
    set(Inhandle, 'Value', 0);  off = (handles.InEdit);
    set(Cmhandle, 'Value', 1);  on  =(handles.CmEdit);
   
  Cm=1; 
end 


% --------------------------------------------------------------------
function varargout = S_11Edit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = S_22Edit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = S_33Edit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = H_12Edit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = H_23Edit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = diaEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = DsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = nbEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = dEdit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------

% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)

Mhandle=findobj(gcbf,'Tag','MeterEdit');
M=get(Mhandle,'Value');
Fhandle=findobj(gcbf,'Tag','FootEdit');
F=get(Fhandle,'Value');
%disp([M,F])  %%%%%%%%%%%%%%%%%%

nph1handle=findobj(gcbf,'Tag','nph1Edit');
nph1=get(nph1handle,'Value');
nph2handle=findobj(gcbf,'Tag','nph2Edit');
nph2=get(nph2handle,'Value');

%disp([ nph1, nph2])  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Cmhandle=findobj(gcbf,'Tag','CmEdit');
Cm=get(Cmhandle,'Value');
Inhandle=findobj(gcbf,'Tag','InEdit');
In=get(Inhandle,'Value');
%disp([Cm In])  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

S11Handle=findobj(gcbf,'Tag','S_11Edit');
S11=eval(get(S11Handle,'String'));

S22Handle=findobj(gcbf,'Tag','S_22Edit');
S22=eval(get(S22Handle,'String'));

S33Handle=findobj(gcbf,'Tag','S_33Edit');
S33=eval(get(S33Handle,'String'));

H12Handle=findobj(gcbf,'Tag','H_12Edit');
H12=eval(get(H12Handle,'String'));
H23Handle=findobj(gcbf,'Tag','H_23Edit');
H23=eval(get(H23Handle,'String'));


diaHandle=findobj(gcbf,'Tag','diaEdit');
dia=eval(get(diaHandle,'String'));

DsHandle=findobj(gcbf,'Tag','DsEdit');
Ds=eval(get(DsHandle,'String'));

nbHandle=findobj(gcbf,'Tag','nbEdit');
nb=eval(get(nbHandle,'String'));

dHandle=findobj(gcbf,'Tag','dEdit');
d=eval(get(dHandle,'String'));

r=dia/2;   

if nb == 1| nb==0 , Dsb = Ds;  rb = r;
elseif nb == 2, Dsb = (d*Ds)^(1/2); rb = (d*r)^(1/2);
elseif nb == 3, Dsb = (d^2*Ds)^(1/3); rb = (d^2*r)^(1/3);
elseif nb == 4, Dsb = 2^0.125*(d^3*Ds)^(1/4); rb = 2^0.125*(d^3*r)^(1/4);
end    

    
if M==1 & F==0
    if Cm==1 & In==0
        r=r/100; Dsb=Dsb/100; rb=rb/100;
    elseif Cm==0 &  In==1
        r=2.54*r/100; Dsb=2.54*Dsb/100; rb=2.54*rb/100;
    end
elseif M==0 & F==1
    if Cm==0 & In==1
        r=r/12; Dsb=Dsb/12; rb=rb/12; 
    elseif Cm==1 & In==0
        r=r/(2.54)*12; Dsb=Dsb/(2.54*12); rb=rb/(2.54*12);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

 
   a1 = -S11/2 + j*H12;
   b1 = -S22/2 + j*0;
   c1 = -S33/2 - j*H23;
   if nph1 == 1
     a2 = S33/2 - j*H23;
     b2 = S22/2 + j*0;
     c2 = S11/2 + j*H12;
     elseif nph2 == 1
     a2 = S11/2 + j*H12;
     b2 = S22/2 + j*0;
     c2 = S33/2 - j*H23;
   end
Da1b1 = abs(a1 - b1);   Da1b2 = abs(a1 - b2);
Da1c1 = abs(a1 - c1);   Da1c2 = abs(a1 - c2);
Db1c1 = abs(b1 - c1);   Db1c2 = abs(b1 - c2);

Da2b1 = abs(a2 - b1);   Da2b2 = abs(a2 - b2);
Da2c1 = abs(a2 - c1);   Da2c2 = abs(a2 - c2);
Db2c1 = abs(b2 - c1);   Db2c2 = abs(b2 - c2);
Da1a2 = abs(a1 - a2);
Db1b2 = abs(b1 - b2);
Dc1c2 = abs(c1 - c2);
DAB=(Da1b1*Da1b2* Da2b1*Da2b2)^0.25;
DBC=(Db1c1*Db1c2*Db2c1*Db2c2)^.25;
DCA=(Da1c1*Da1c2*Da2c1*Da2c2)^.25;
GMD=(DAB*DBC*DCA)^(1/3);

DSA=sqrt(Dsb*Da1a2);      rA = sqrt(rb*Da1a2);
DSB=sqrt(Dsb*Db1b2);      rB = sqrt(rb*Db1b2);
DSC=sqrt(Dsb*Dc1c2);      rC = sqrt(rb*Dc1c2);
GMRL=(DSA*DSB*DSC)^(1/3); GMRC = (rA*rB*rC)^(1/3);

L=0.2*log(GMD/GMRL);
C=0.0556/log(GMD/GMRC);
assignin('base', 'L',L);
assignin('base', 'Cap',C);
axes(handles.axes3)    % Select the proper axes
if F==1 & M==0
cla
axes(handles.axes3)    % Select the proper axes
axis off   
text(0, 1, ['Geometric Mean Distance, GMD = ', num2str(GMD),' ft'], 'color', [0 0 1], 'erasemode','background')             
text(0, .8, ['Geometric Mean Raduis,  GMR_L = ', num2str(GMRL), ' ft'], 'color', [0 0 1], 'erasemode','background')
text(0, .6, ['Geometric Mean Raduis, GMR_C = ', num2str(GMRC), ' ft'], 'color', [0 0 1], 'erasemode','background')
text(0, .3, ['Inductance per phase              L = ', num2str(L), ' mH/Km'], 'color', [0 0 1], 'erasemode','background')
text(0, .1, ['Capacitance (phase to neutral) C = ', num2str(C), ' \muF/Km'], 'color', [0 0 1], 'erasemode','background')
text(0,0, ' ')
elseif F==0 & M==1
cla
axes(handles.axes3)    % Select the proper axes
axis off   
text(0, 1, ['Geometric Mean Distance, GMD = ', num2str(GMD), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .8, ['Geometric Mean Raduis,  GMR_L = ', num2str(GMRL), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .6, ['Geometric Mean Raduis, GMR_C = ', num2str(GMRC), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .3, ['Inductance per phase              L = ', num2str(L), ' mH/Km'], 'color', [0 0 1], 'erasemode','background')
text(0, .1, ['Capacitance (phase to neutral) C = ', num2str(C), ' \muF/Km'], 'color', [0 0 1], 'erasemode','background')

text(0,0, ' ')
end

% --------------------------------------------------------------------
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
close














