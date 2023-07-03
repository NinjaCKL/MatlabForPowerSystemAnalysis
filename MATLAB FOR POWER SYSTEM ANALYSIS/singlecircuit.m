function varargout = SingleCircuit(varargin)

% SINGLECIRCUIT Application M-file for SingleCircuit.fig
%    FIG = SINGLECIRCUIT launch SingleCircuit GUI.
%    SINGLECIRCUIT('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 18-Mar-2002 15:56:51

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');
	
	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
 
axes(handles.SingleCktAxes) % Select the proper axes
r=.5;
th=0:.01:2*pi;
x=r*cos(th); y=r*sin(th);
plot(x+2, y+12, 'b', x+4, y+4, 'b', x+6, y+22, 'b')
hold on 
plot(x+14, y+12, 'r', x+24, y+12, 'r', x+34, y+12,'r')
quiver(17.5,12, -3.5,0,'r'), quiver(20.5,12, 3.5,0,'r')
quiver(27.5,12, -3.5,0,'r'), quiver(30.5,12, 3.5,0,'r')
quiver(17.5,9, -3.5,0,'r'), quiver(30.5,9, 3.5,0,'r')
axis('equal')
axis([-.25, 35, 1 ,23])
axis off
text(4.5,22,'a','Color','b'), text(.5, 12, 'b','Color','b'), text(2.5,4,'c','Color','b')

text(18,12,'D_{12}','Color','r'), text(28,12,'D_{23}','Color','r'), text(23,9,'D_{13}', 'Color','r')
%quiver(3.4,15, -1.6,-3), quiver(4.6,19, 1.6,3)
quiver(3.3,15.25, -1.3,-3.25), quiver(4.7,18.75, 1.3,3.25)

quiver(3.273,6.91, 0.727,-2.91), quiver(2.727,9.09, -0.727,2.91)



quiver(4.44,7.975, -.44,-3.975), quiver(5.56,18.025, 0.44,3.975)

text(3.5,17,'D_{12}','Color','b'), text(2.5,8,'D_{23}','Color','b'), text(4.95,12.5,'D_{13}','Color','b')
text(13.75 ,13.5,'a','Color','r'), text(23.75, 13.5, 'b','Color','r'), text(33.75,13.5,'c','Color','r')
text(0,2,'Vertical configuration','Color','b'), text(18,7,'Horizontal configuration','Color','r')
text(10,12,'OR')


    
    
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
   %set(Mhandle, 'Value', 1, gca, 'Box', 'On')
   %set(Fhandle, 'Value', 0, gca, 'Box', 'Off')
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
function varargout = D_12Edit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = D_23Edit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = D_13Edit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = diaEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = DsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = nbEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = dEdit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------

function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
Mhandle=findobj(gcbf,'Tag','MeterEdit');
M=get(Mhandle,'Value');
Fhandle=findobj(gcbf,'Tag','FootEdit');
F=get(Fhandle,'Value');
%disp([M,F])  %%%%%%%%%%%%%%%%%%
Cmhandle=findobj(gcbf,'Tag','CmEdit');
Cm=get(Cmhandle,'Value');
Inhandle=findobj(gcbf,'Tag','InEdit');
In=get(Inhandle,'Value');
%disp([Cm In])  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D12Handle=findobj(gcbf,'Tag','D_12Edit');
D12=eval(get(D12Handle,'String'));

D23Handle=findobj(gcbf,'Tag','D_23Edit');
D23=eval(get(D23Handle,'String'));

D13Handle=findobj(gcbf,'Tag','D_13Edit');
D13=eval(get(D13Handle,'String'));

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

GMD = (D12*D23*D13)^(1/3);     
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
 

GMRL = Dsb; GMRC = rb;
L=0.2*log(GMD/GMRL);
C=0.0556/log(GMD/GMRC);
assignin('base', 'Leqw',L);
assignin('base', 'Ceqw',C);
%varargout(1)={L}
axes(handles.axes2)    % Select the proper axes
if F==1 & M==0
cla
axes(handles.axes2)    % Select the proper axes
axis off   
text(0, 1, ['Geometric Mean Distance, GMD = ', num2str(GMD),' ft'], 'color', [0 0 1], 'erasemode','background')             
text(0, .8, ['Geometric Mean Raduis,  GMR_L = ', num2str(GMRL), ' ft'], 'color', [0 0 1], 'erasemode','background')
text(0, .6, ['Geometric Mean Raduis, GMR_C = ', num2str(GMRC), ' ft'], 'color', [0 0 1], 'erasemode','background')
text(0, .3, ['Inductance per phase              L = ', num2str(L), ' mH/Km'], 'color', [0 0 1], 'erasemode','background')
text(0, .1, ['Capacitance (phase to neutral) C = ', num2str(C), ' \muF/Km'], 'color', [0 0 1], 'erasemode','background')
text(0,0, ' ')
elseif F==0 & M==1
cla
axes(handles.axes2)    % Select the proper axes
axis off   
text(0, 1, ['Geometric Mean Distance, GMD = ', num2str(GMD), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .8, ['Geometric Mean Raduis,  GMR_L = ', num2str(GMRL), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .6, ['Geometric Mean Raduis, GMR_C = ', num2str(GMRC), ' m'], 'color', [0 0 1], 'erasemode','background')
text(0, .3, ['Inductance per phase              L = ', num2str(L), ' mH/Km'], 'color', [0 0 1], 'erasemode','background')
text(0, .1, ['Capacitance (phase to neutral) C = ', num2str(C), ' \muF/Km'], 'color', [0 0 1], 'erasemode','background')

text(0,0, ' ')
end
% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
close

