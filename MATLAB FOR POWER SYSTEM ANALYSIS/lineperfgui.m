function varargout = LinePerfGui(varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
% LinePerfGui Application M-file for LinePerfGui.fig
%    FIG = LinePerfGui launch LinePerfGui GUI.
%    LinePerfGui('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 29-May-2002 15:10:31

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

    
    model=0; pram=0;

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
function varargout = gedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Ledit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Capedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = redit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = zedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = yedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Zedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Yedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Aedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Bedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Cedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = reqedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = geqedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Leqedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = Ceqedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = frqedit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = lgtedit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = VrEdit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = drEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = PrEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = QrEdit_Callback(h, eventdata, handles, varargin)

% --------------------------------------------------------------------
function varargout = VrdEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = drdEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = VscEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = VsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = dsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = PsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = QsEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = SrEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = VrNLEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = kcEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = VratEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = pfratEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = IthEdit_Callback(h, eventdata, handles, varargin)
% --------------------------------------------------------------------
function varargout = MVAratEdit_Callback(h, eventdata, handles, varargin)


% --------------------------------------------------------------------
function varargout = listboxmodel_Callback(h, eventdata, handles, varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
box1Handle=findobj(gcbf,'Tag','listbox1');
ML=get(handles.listboxmodel,'Value');

if ML==1
    model=0; set(handles.listbox1,'Value', 1); parm=0; MM=1;
elseif ML==2
    model=1; set(handles.listbox1,'Value', 1); pram=0; MM=1;
elseif ML==3
    model=2; set(handles.listbox1,'Value', 1); parm=0;  MM=1;
elseif ML==4
    model=3; set(handles.listbox1,'Value', 1); parm=0; MM=1;
else, end

% --------------------------------------------------------------------
function varargout = listbox1_Callback(h, eventdata, handles, varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
box1Handle=findobj(gcbf,'Tag','listbox1');
ML=get(handles.listboxmodel,'Value');
MM=get(handles.listbox1,'Value');
textRedHandle=findobj(gcbf,'Tag','Redtext');
textRedmodel=findobj(gcbf,'Tag','Redmodel');
if MM==1, pram=0;
elseif MM==2, pram=1;
elseif MM==3, pram=2;
elseif MM==4, pram=3;
elseif MM==5, pram=4;
elseif MM==6, pram=5;
else, end 
 if ML==1
  set(handles.listbox1,'Value', 1);
else, end
if model==0
set(textRedmodel, 'visible', 'on')
else, 
set(textRedmodel, 'visible', 'off')
end
textRedbutton=findobj(gcbf,'Tag','Redbutton');
textRedbutton2=findobj(gcbf,'Tag','Redbutton2');

frqHandle=findobj(gcbf,'Tag','frqedit');
lgtHandle=findobj(gcbf,'Tag','lgtedit');
f=eval(get(frqHandle,'String'));w=2*pi*f;
Length=eval(get(lgtHandle,'String'));
rHandle=findobj(gcbf,'Tag','redit');
LHandle=findobj(gcbf,'Tag','Ledit');
gHandle=findobj(gcbf,'Tag','gedit');
CapHandle=findobj(gcbf,'Tag','Capedit');
zHandle=findobj(gcbf,'Tag','zedit');
yHandle=findobj(gcbf,'Tag','yedit');
ZHandle=findobj(gcbf,'Tag','Zedit');
YHandle=findobj(gcbf,'Tag','Yedit');
AHandle=findobj(gcbf,'Tag','Aedit');
BHandle=findobj(gcbf,'Tag','Bedit');
CHandle=findobj(gcbf,'Tag','Cedit');
LeqHandle=findobj(gcbf,'Tag','Leqedit');
CeqHandle=findobj(gcbf,'Tag','Ceqedit');
reqHandle=findobj(gcbf,'Tag','reqedit');
geqHandle=findobj(gcbf,'Tag','geqedit');
textAHandle=findobj(gcbf,'Tag','Atext');
textBHandle=findobj(gcbf,'Tag','Btext');
textCHandle=findobj(gcbf,'Tag','Ctext');
textDHandle=findobj(gcbf,'Tag','Dtext');
textEHandle=findobj(gcbf,'Tag','Etext');
textRedHandle=findobj(gcbf,'Tag','Redtext');
textRedmodel=findobj(gcbf,'Tag','Redmodel');
if pram==0 | model==0
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    set(textRedbutton, 'visible', 'off')
    set(textRedbutton2, 'visible', 'off')

elseif pram==1 & model~=0
    r=eval(get(rHandle,'String'));
    g=eval(get(gHandle,'String'));
    L=eval(get(LHandle,'String'));
    Cap=eval(get(CapHandle,'String'));
    set(rHandle, 'visible', 'on')
    set(gHandle, 'visible', 'on')
    set(LHandle, 'visible', 'on')
    set(CapHandle, 'visible', 'on')
    set(textAHandle, 'visible', 'on')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    


    
elseif pram==2 & model~=0
    z=eval(get(zHandle,'String'));
    y=eval(get(yHandle,'String'));
    
    set(zHandle, 'visible', 'on')
    set(yHandle, 'visible', 'on')
    set(textBHandle, 'visible', 'on')
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')  
    set(YHandle, 'visible', 'off')  
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off') 
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    set(textRedbutton2, 'visible', 'off')


elseif pram==3 & model~=0
    Z=eval(get(ZHandle,'String'));
    Y=eval(get(YHandle,'String'));
    
    set(ZHandle, 'visible', 'on')
    set(YHandle, 'visible', 'on')
    set(textCHandle, 'visible', 'on') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    set(textRedbutton2, 'visible', 'off')


elseif pram==4 & model~=0
    A=eval(get(AHandle,'String'));
    B=eval(get(BHandle,'String'));
    C=eval(get(CHandle,'String'));
    D=A;
        
    set(AHandle, 'visible', 'on')
    set(BHandle, 'visible', 'on')
    set(CHandle, 'visible', 'on')
    set(textDHandle, 'visible', 'on') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    set(textRedbutton2, 'visible', 'off')
    

elseif pram==5 & model~=0
    set(reqHandle, 'visible', 'on')
    set(geqHandle, 'visible', 'on')
    set(LeqHandle, 'visible', 'on')
    set(CeqHandle, 'visible', 'on')
    set(textEHandle, 'visible', 'on')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')  
    set(textEHandle, 'visible', 'on')
    set(textRedbutton2, 'visible', 'off')
   

    %figure(LCGUI)
    set(textRedHandle, 'visible', 'on')
    uiwait(figure(LCGUI))
    Leq=evalin('base', 'Leqw');
    Ceq=evalin('base', 'Ceqw');
    set(handles.Leqedit,'String', Leq);
    set(handles.Ceqedit,'String', Ceq);
    set(textRedHandle, 'visible', 'off')
    LeqHandle=findobj(gcbf,'Tag','Leqedit');
    Leq=eval(get(LeqHandle,'String'));
    CeqHandle=findobj(gcbf,'Tag','Ceqedit');
    Ceq=eval(get(CeqHandle,'String')); 
    req=eval(get(reqHandle,'String'));
    geq=eval(get(geqHandle,'String'));
    r=req; g=geq;     

else, end
    if model==1 |model==0
    set(gHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    
else,end    
    set(handles.Zis, 'visible', 'off'); set(handles.Rout, 'visible', 'off'); set(handles.jout, 'visible', 'off'); set(handles.Xout, 'visible', 'off')
    set(handles.Yis, 'visible', 'off'); set(handles.Gout, 'visible', 'off'); set(handles.Bout, 'visible', 'off')
    set(handles.ohm, 'visible', 'off'); set(handles.mho, 'visible', 'off'); set(handles.ohm, 'visible', 'off'); 
    set(handles.Ais, 'visible', 'off'); set(handles.Arout, 'visible', 'off'); set(handles.Aiout, 'visible', 'off'); 
    set(handles.Bis, 'visible', 'off'); set(handles.Brout, 'visible', 'off'); set(handles.Biout, 'visible', 'off'); 
    set(handles.Cis, 'visible', 'off'); set(handles.Crout, 'visible', 'off'); set(handles.Ciout, 'visible', 'off'); 
    set(handles.Dis, 'visible', 'off'); set(handles.Drout, 'visible', 'off'); set(handles.Diout, 'visible', 'off'); 
    set(handles.Zcis, 'visible', 'off');     set(handles.Rcout, 'visible', 'off'); set(handles.j2out, 'visible', 'off'); set(handles.Xcout, 'visible', 'off');
    set(handles.Alphais, 'visible', 'off');  set(handles.ellis, 'visible', 'off'); 
    set(handles.Alphaout, 'visible', 'off'); set(handles.Betais, 'visible', 'off'); set(handles.Betaout, 'visible', 'off');
    set(handles.neper, 'visible', 'off');    set(handles.radian, 'visible', 'off')
    set(handles.ohm2, 'visible', 'off') 
% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
ML=get(handles.listboxmodel,'Value');
MM=get(handles.listbox1,'Value');
textRedbutton=findobj(gcbf,'Tag','Redbutton');
textRedbutton2=findobj(gcbf,'Tag','Redbutton');
set(textRedbutton2, 'visible', 'off')

frqHandle=findobj(gcbf,'Tag','frqedit');
lgtHandle=findobj(gcbf,'Tag','lgtedit');
f=eval(get(frqHandle,'String'));w=2*pi*f;
Length=eval(get(lgtHandle,'String'));
rHandle=findobj(gcbf,'Tag','redit');
LHandle=findobj(gcbf,'Tag','Ledit');
gHandle=findobj(gcbf,'Tag','gedit');
CapHandle=findobj(gcbf,'Tag','Capedit');
zHandle=findobj(gcbf,'Tag','zedit');
yHandle=findobj(gcbf,'Tag','yedit');
ZHandle=findobj(gcbf,'Tag','Zedit');
YHandle=findobj(gcbf,'Tag','Yedit');
AHandle=findobj(gcbf,'Tag','Aedit');
BHandle=findobj(gcbf,'Tag','Bedit');
CHandle=findobj(gcbf,'Tag','Cedit');
LeqHandle=findobj(gcbf,'Tag','Leqedit');
CeqHandle=findobj(gcbf,'Tag','Ceqedit');
reqHandle=findobj(gcbf,'Tag','reqedit');
geqHandle=findobj(gcbf,'Tag','geqedit');
textAHandle=findobj(gcbf,'Tag','Atext');
textBHandle=findobj(gcbf,'Tag','Btext');
textCHandle=findobj(gcbf,'Tag','Ctext');
textDHandle=findobj(gcbf,'Tag','Dtext');
textEHandle=findobj(gcbf,'Tag','Etext');
textRedHandle=findobj(gcbf,'Tag','Redtext');
textRedmodel=findobj(gcbf,'Tag','Redmodel');
if pram==0 | model==0
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
 
elseif pram==1 & model~=0
    r=eval(get(rHandle,'String'));
    g=eval(get(gHandle,'String'));
    L=eval(get(LHandle,'String'));
    Cap=eval(get(CapHandle,'String'));
     if Cap ==0 & model==3
        set(textRedbutton2, 'visible', 'on')
    elseif Cap==0   
      set(textRedbutton2, 'visible', 'off')
    end
    Z=(r+j*w*L*0.001)*Length;
        if model==1 
            Y=0;
        else
            Y= g + j*w*Cap*1e-6*Length;
            Zc = sqrt(Z/Y); Gamal=sqrt(Z*Y);
        end
    set(rHandle, 'visible', 'on')
    set(gHandle, 'visible', 'on')
    set(LHandle, 'visible', 'on')
    set(CapHandle, 'visible', 'on')
    set(textAHandle, 'visible', 'on')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
   

elseif pram==2 & model~=0
    z=eval(get(zHandle,'String'));
    y=eval(get(yHandle,'String'));
    Z=z*Length;
        if model==1  
           Y=0;
       else
            Y= y*Length;
            Zc = sqrt(Z/Y); Gamal=sqrt(Z*Y);
        end
    set(zHandle, 'visible', 'on')
    set(yHandle, 'visible', 'on')
    set(textBHandle, 'visible', 'on')
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')  
    set(YHandle, 'visible', 'off')  
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off') 
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    

elseif pram==3 & model~=0
    Z=eval(get(ZHandle,'String'));
    Y=eval(get(YHandle,'String'));
    if model==3
        Gamal=acosh(1+Z*Y/2); Zc=Z/sinh(Gamal);
    else, end
    if model==1
            Y=0;
        else
        end
    set(ZHandle, 'visible', 'on')
    set(YHandle, 'visible', 'on')
    set(textCHandle, 'visible', 'on') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
    
elseif pram==4 & model~=0
    A=eval(get(AHandle,'String'));
    B=eval(get(BHandle,'String'));
    C=eval(get(CHandle,'String'));
    D=A;
        if model==1
           A=1; C=0; D=1; Z=B; Y=0;
       else
            Z=B; 
               if B~=0
                   Y=2*(A-1)/B;
                    Gamal=acosh(A);
                    Zc=B/sinh(Gamal);
                else
                    Y=0;
                end
            end
    set(AHandle, 'visible', 'on')
    set(BHandle, 'visible', 'on')
    set(CHandle, 'visible', 'on')
    set(textDHandle, 'visible', 'on') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(reqHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(LeqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')
    set(textEHandle, 'visible', 'off')
    set(textRedHandle, 'visible', 'off')
elseif pram==5 & model~=0
    set(reqHandle, 'visible', 'on')
    set(geqHandle, 'visible', 'on')
    set(LeqHandle, 'visible', 'on')
    set(CeqHandle, 'visible', 'on')
    set(textEHandle, 'visible', 'on')
    set(AHandle, 'visible', 'off')
    set(BHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(textDHandle, 'visible', 'off') 
    set(rHandle, 'visible', 'off')
    set(gHandle, 'visible', 'off')
    set(LHandle, 'visible', 'off')
    set(CapHandle, 'visible', 'off')
    set(zHandle, 'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(ZHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(textAHandle, 'visible', 'off')
    set(textBHandle, 'visible', 'off')
    set(textCHandle, 'visible', 'off')  
    set(textEHandle, 'visible', 'on')
    LeqHandle=findobj(gcbf,'Tag','Leqedit');
    Leq=eval(get(LeqHandle,'String'));
    CeqHandle=findobj(gcbf,'Tag','Ceqedit');
    Ceq=eval(get(CeqHandle,'String'));
    req=eval(get(reqHandle,'String'));
    geq=eval(get(geqHandle,'String'));
    r=req; g=geq;
    Z=(r+j*w*Leq*0.001)*Length;
        if model==1
            Y=0;
        else
            Y= g+j*w*Ceq*1e-6*Length;
            Zc = sqrt(Z/Y); Gamal=sqrt(Z*Y);
        end
else, end
if model==1 | model==0
    set(gHandle, 'visible', 'off')
    set(CapHandle,'visible', 'off')
    set(yHandle, 'visible', 'off')
    set(YHandle, 'visible', 'off')
    set(AHandle, 'visible', 'off')
    set(CHandle, 'visible', 'off')
    set(geqHandle, 'visible', 'off')
    set(CeqHandle, 'visible', 'off')

else, end

textRedbutton=findobj(gcbf,'Tag','Redbutton');

if ML~=1 & MM~=1
    set(textRedbutton, 'visible', 'off')
    set(handles.Zis, 'visible', 'on'); set(handles.Rout, 'visible', 'on'); set(handles.jout, 'visible', 'on'); set(handles.Xout, 'visible', 'on')
    set(handles.Yis, 'visible', 'on'); set(handles.Gout, 'visible', 'on'); set(handles.Bout, 'visible', 'on')
    set(handles.ohm, 'visible', 'on'); set(handles.mho, 'visible', 'on'); set(handles.ohm, 'visible', 'on'); 
    set(handles.Ais, 'visible', 'on'); set(handles.Arout, 'visible', 'on'); set(handles.Aiout, 'visible', 'on'); 
    set(handles.Bis, 'visible', 'on'); set(handles.Brout, 'visible', 'on'); set(handles.Biout, 'visible', 'on'); 
    set(handles.Cis, 'visible', 'on'); set(handles.Crout, 'visible', 'on'); set(handles.Ciout, 'visible', 'on'); 
    set(handles.Dis, 'visible', 'on'); set(handles.Drout, 'visible', 'on'); set(handles.Diout, 'visible', 'on'); 
    if model== 1
        
        fprintf ('\n'), disp(' Short line model')
        disp(' ----------------')
        fprintf('\n')
        fprintf(' Z = %g + j ',real(Z)),  fprintf('%g ohms\n',imag(Z)),
        Y = 0 + j*0; Zc = 0;
    elseif model==3 
        if pram~=3 & pram~=4
            Z = Zc*sinh(Gamal);  Y = 2*tanh(Gamal/2) /Zc;
        else, end
    else, end
    if model==2,  disp(' '),  disp(' Nominal pi model'),
        
        disp(' ----------------')
        fprintf('\n'), fprintf(' Z = %g + j ',real(Z)), fprintf('%g ohms\n',imag(Z)),
        fprintf(' Y = %g + j ',real(Y)), fprintf('%g Siemens\n',imag(Y))
    elseif model==3, disp(' '), disp(' Equivalent pi model')
        disp(' -------------------')
        fprintf('\n')
        fprintf(' Z'' = %g + j ',real(Z)),  fprintf('%g ohms\n',imag(Z)),
        fprintf(' Y'' = %g + j ',real(Y)),  fprintf('%g siemens\n',imag(Y))
            if model==3 
            fprintf(' Zc  = %g + j ',real(Zc)), fprintf('%g ohms\n',imag(Zc))
            fprintf(' alpha l  = %g neper', real(Gamal))
            fprintf('    beta l = %g radian', imag(Gamal))
            fprintf('   = %gø\n', imag(Gamal*180/pi))
            else, end
    else, end,
    % A,B,C,D constants of line
    if pram~=4
        A = 1 + Z*Y/2;  B = Z;
        C = Y*(1 + Z*Y/4);  D = A;
    else, end
    ABCD = [A B; C D];
    disp(' ')
    fprintf('         %-11.5g + j', real(A)), fprintf(' %-11.5g', imag(A))
    fprintf('   %-11.5g + j', real(B)), fprintf(' %-11.5g  \n', imag(B))
    fprintf(' ABCD =                                                             \n')
    fprintf('         %-11.5g + j', real(C)), fprintf(' %-11.5g', imag(C))
    fprintf('   %-11.5g + j', real(D)), fprintf(' %-11.5g  \n', imag(D))
    fprintf(' \n')
    set(handles.Zis,'String',('Z = ')); 
    set(handles.Rout,'String', real(Z)); set(handles.jout,'String', ('+j'));  set(handles.Xout,'String', imag(Z));
    set(handles.Yis,'String',('Y = ')); 
    set(handles.Gout,'String', real(Y)); set(handles.jout,'String', ('+j'));  set(handles.Bout,'String', imag(Y));
    set(handles.mho, 'String', 'S'),  set(handles.ohm, 'String', 'W'),
    
    if model==3
        set(handles.Zcis, 'visible', 'on');     set(handles.Rcout, 'visible', 'on');  set(handles.j2out, 'visible', 'on'); set(handles.Xcout, 'visible', 'on');
        set(handles.Alphais, 'visible', 'on');  set(handles.ellis, 'visible', 'on'); 
        set(handles.Alphaout, 'visible', 'on'); set(handles.Betais, 'visible', 'on'); set(handles.Betaout, 'visible', 'on');
        set(handles.Zcis,'String',('Z_c = ')); 
        set(handles.Rcout,'String', real(Zc));  set(handles.j2out,'String', ('+j'));  set(handles.Xcout,'String', imag(Zc));
        set(handles.Alphais,'String',('a'));    set(handles.ellis,'String',('l = ')); 
        set(handles.Alphaout,'String', real(Gamal)); set(handles.Betais,'String', ('b')); set(handles.ellis,'String',('l = ')); set(handles.Betaout,'String', imag(Gamal));
        set(handles.neper, 'visible', 'on'), set(handles.radian, 'visible', 'on')
        set(handles.neper, 'String', 'neper'), set(handles.radian, 'String', 'radian')
        set(handles.ohm2, 'visible', 'on'), set(handles.ohm2, 'String', 'W');
    else,
        set(handles.Zcis, 'visible', 'off');     set(handles.Rcout, 'visible', 'off'); set(handles.j2out, 'visible', 'off'); set(handles.Xcout, 'visible', 'off');
        set(handles.Alphais, 'visible', 'off');  set(handles.ellis, 'visible', 'off'); 
        set(handles.Alphaout, 'visible', 'off'); set(handles.Betais, 'visible', 'off'); set(handles.Betaout, 'visible', 'off');
        set(handles.neper, 'visible', 'off');    set(handles.radian, 'visible', 'off')
        set(handles.ohm2, 'visible', 'off')
    end
    set(handles.Ais,'String',('A = ')); set(handles.Arout,'String', real(A)); set(handles.jout,'String', ('+j')); set(handles.Aiout,'String', imag(A)); 
    set(handles.Bis,'String',('B = ')); set(handles.Brout,'String', real(B)); set(handles.jout,'String', ('+j')); set(handles.Biout,'String', imag(B)); 
    set(handles.Cis,'String',('C = ')); set(handles.Crout,'String', real(C)); set(handles.jout,'String', ('+j')); set(handles.Ciout,'String', imag(C)); 
    set(handles.Dis,'String',('D = ')); set(handles.Drout,'String', real(D)); set(handles.jout,'String', ('+j')); set(handles.Diout,'String', imag(D)); 
else, set(textRedbutton, 'visible', 'on'); 
end
% --------------------------------------------------------------------
function varargout = listbox3_Callback(h, eventdata, handles, varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
AM=get(handles.listbox3,'Value');
RedAnalysisHandle=findobj(gcbf,'Tag','RedAnalysis');
RedStep13Handle=findobj(gcbf,'Tag','RedStep13');
axes(handles.ResultAxes)    % Select the proper axes
hrst=gca;
cla(hrst)  
axes(handles.PortAxes)    % Select the proper axes
hPort=gca;
VrmHandle=findobj(gcbf,'Tag','VrEdit');
VrmdHandle=findobj(gcbf,'Tag','VrdEdit');
VsmHandle=findobj(gcbf,'Tag','VsEdit');
VsmcHandle=findobj(gcbf,'Tag','VscEdit');
VrNLHandle=findobj(gcbf,'Tag','VrNLEdit');
drHandle=findobj(gcbf,'Tag','drEdit');
PrHandle=findobj(gcbf,'Tag','PrEdit');
QrHandle=findobj(gcbf,'Tag','QrEdit');
dsHandle=findobj(gcbf,'Tag','dsEdit');
PsHandle=findobj(gcbf,'Tag','PsEdit');
QsHandle=findobj(gcbf,'Tag','QsEdit');
ZrHandle=findobj(gcbf,'Tag','ZrEdit');
CapCompHandle=findobj(gcbf,'Tag','CapComp');       
CapFrameHandle=findobj(gcbf,'Tag','CapFrame');
ShtHandle=findobj(gcbf,'Tag','ShtEdit');
SriHandle=findobj(gcbf,'Tag','SriEdit');
ShSrHandle=findobj(gcbf,'Tag','ShSrEdit');
drdHandle=findobj(gcbf,'Tag','drdEdit');
CaptextHandle=findobj(gcbf,'Tag','Captext');      
kcEditHandle=findobj(gcbf,'Tag','kcEdit');     
Shthandle=findobj(gcbf,'Tag','ShtEdit');
Sht=get(Shthandle,'Value');
Srihandle=findobj(gcbf,'Tag','SriEdit');
Sri=get(Srihandle,'Value');
ShSrhandle=findobj(gcbf,'Tag','ShSrEdit');
ShSr=get(ShSrhandle,'Value');
MVAratHandle=findobj(gcbf,'Tag','MVAratEdit');
pfratHandle=findobj(gcbf,'Tag','pfratEdit');
IthHandle=findobj(gcbf,'Tag','IthEdit');
VratHandle=findobj(gcbf,'Tag','VratEdit');
if pram~=0
set(RedStep13Handle, 'visible', 'off')
cla(hPort)
axis([-.05 3.4  0 1])
    if AM==1
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        %%%%%%%%%%%%%
        set(VsmHandle, 'visible', 'off')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        set(VrNLHandle, 'visible', 'off')

    set(CapCompHandle, 'visible', 'off') 
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')  
    set(kcEditHandle, 'visible', 'off')  
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off')  
    set(VratHandle, 'visible', 'off')  
elseif AM==2 
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 1 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
        line([1.65, 3], [0.9, 0.9]),  line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(1.7,.63,'|V_{R(LL)}| =')
        text(1.95,.35, '\delta_R =')
        text(3.15, .6, 'P_{R(3\phi)} ='), text(3.15, .3, 'Q_{R(3\phi)} =')
        text(2.45, .8, 'KV')
        text(2.6,  .45, '\circ')
        text(4.3,.62,'MW')
        text(4.3,.32,'Mvar')
        text(3.65, .2, '+ lggging pf')
        text(3.65, .1, ' - leading pf')
        text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        text(0 , .5, 'V_S\angle\delta_S^\circ', 'Color', [1 0 0])
        text(0 , .8, 'S_{S(3\phi)}', 'Color', [1 0 0])
        axis off
        hold off
        Vrm=eval(get(VrmHandle,'String'));
        dr=eval(get(drHandle,'String'));
        Pr=eval(get(PrHandle,'String'));
        Qr=eval(get(QrHandle,'String'));
        set(VrmHandle, 'visible', 'on')
        set(drHandle, 'visible', 'on')
        set(PrHandle, 'visible', 'on')
        set(QrHandle, 'visible', 'on')
        set(VsmHandle, 'visible', 'off')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off');
        set(VrNLHandle, 'visible', 'off');
        set(CapCompHandle, 'visible', 'off') 
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')
    set(kcEditHandle, 'visible', 'off')
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off') 
    set(VratHandle, 'visible', 'off')  
 elseif AM==3 
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 2 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1.4], [0.9, 0.9]), line([0, 1.4], [0.1, 0.1])
        hold on 
        line([2.05, 3], [0.9, 0.9]),  line([2.05, 3], [0.1, 0.1])
        %%line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([1.4  1.4  2.05 2.05 1.4], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(0.145, .625,'|V_{S(LL)}| =')
        text(.4, .285, '\delta_S =')
        text(-1.05, .625, 'P_{S(3\phi)} ='), text(-1.05, .285, 'Q_{S(3\phi)} =')
        text(.9, .82, 'KV')
        text(1.05,  .45, '\circ')
        text(-.4, .8,'MW')
        text(-.4,.45,'Mvar')
        text(-.9, .1, '+ lggging pf')
        text(-.9, 0, ' - leading pf')
        text(1.55, .6, 'A   B')
        text(1.55, .4, 'C   D')
        text(2.4, .4, 'V_R\angle\delta_S^\circ', 'Color', [1 0 0])
        text(2.4 , .7, 'S_{R(3\phi)}', 'Color', [1 0 0])
        axis off
        hold off  
        Vsm=eval(get(VsmHandle,'String'));
        ds=eval(get(dsHandle,'String'));
        Ps=eval(get(PsHandle,'String'));
        Qs=eval(get(QsHandle,'String'));
        set(VsmHandle, 'visible', 'on')
        set(dsHandle, 'visible', 'on')
        set(PsHandle, 'visible', 'on')
        set(QsHandle, 'visible', 'on')
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off')
        set(VrNLHandle, 'visible', 'off')
        set(CapCompHandle, 'visible', 'off')  
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')    
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off') 
    set(kcEditHandle, 'visible', 'off') 
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off') 
    set(VratHandle, 'visible', 'off')  
elseif AM==4
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 3 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
        line([1.65, 3], [0.9, 0.9]),  line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(1.7,.63,'|V_{R(LL)}| =')
        text(1.95,.35, '\delta_R =')
        text(3.15, .5, 'Z_{R(\phi)} =')
        text(2.45, .8, 'KV')
        text(2.6,  .45, '\circ')
        text(3.8,.65,'\Omega     \Omega')
       text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        text(0 , .5, 'V_S\angle\delta_S^\circ', 'Color', [1 0 0])
        text(0 , .8, 'S_{S(3\phi)}', 'Color', [1 0 0])
        axis off
        hold off
        Vrm=eval(get(VrmHandle,'String'));
        dr=eval(get(drHandle,'String'));
        Pr=eval(get(PrHandle,'String'));
        Qr=eval(get(QrHandle,'String'));
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'on')
        set(VrmHandle, 'visible', 'on')
        set(drHandle, 'visible', 'on')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        set(VsmHandle, 'visible', 'off')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        set(VrNLHandle, 'visible', 'off')
        set(CapCompHandle, 'visible', 'off') 
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off') 
    set(kcEditHandle, 'visible', 'off')
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off')
    set(VratHandle, 'visible', 'off')  
elseif AM==5
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 4 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1.4], [0.9, 0.9]), line([0, 1.4], [0.1, 0.1])
        hold on 
        line([2.05, 3], [0.9, 0.9]),  line([2.05, 3], [0.1, 0.1])
        line([1.4  1.4  2.05 2.05 1.4], [0  1  1  0  0])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(0.145, .625,'|V_{S(LL)}| =')
        text(.4, .285, '\delta_S =')
        text(.9, .82, 'KV')
        text(1.05,  .45, '\circ')
        text(1.55, .6, 'A   B')
        text(1.55, .4, 'C   D')
        text(2.4, .6, 'V_R\angle\delta_S^\circ', 'Color', [1 0 0])
        axis off
        hold off  
        Vsm=eval(get(VsmHandle,'String'));
        ds=eval(get(dsHandle,'String'));
        set(VsmHandle, 'visible', 'on')
        set(dsHandle, 'visible', 'on')
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        set(VrNLHandle, 'visible', 'off')
        set(CapCompHandle, 'visible', 'off')  
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')  
    set(kcEditHandle, 'visible', 'off')
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off')
    set(VratHandle, 'visible', 'off')  
elseif AM==6
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 5 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1.4], [0.9, 0.9]), line([0, 1.4], [0.1, 0.1])
        hold on 
        line([2.05, 3], [0.9, 0.9]),  line([2.05, 3], [0.1, 0.1])
        line([1.4  1.4  2.05 2.05 1.4], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.10225])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(0.145, .625,'|V_{S(LL)}| =')
        text(.4, .285, '\delta_S =')
        text(.9, .82, 'KV')
        text(1.05,  .45, '\circ')
        text(1.55, .6, 'A   B')
        text(1.55, .4, 'C   D')
        text(2.4, .6, 'V_R\angle\delta_S^\circ', 'Color', [1 0 0])
        axis off
        hold off  
        Vsm=eval(get(VsmHandle,'String'));
        ds=eval(get(dsHandle,'String'));
        set(VsmHandle, 'visible', 'on')
        set(dsHandle, 'visible', 'on')
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off') 
        set(VrNLHandle, 'visible', 'off')
        set(CapCompHandle, 'visible', 'off')  
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')  
    set(kcEditHandle, 'visible', 'off') 
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off')
    set(VratHandle, 'visible', 'off')  
elseif AM==7
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 6 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
       line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        if Sht==1
            line([1.65, 3], [0.9, 0.9]),  
            line([2.6, 2.6], [.9, .55])
            line([2.6, 2.6], [.45, .1])
            line([2.5, 2.7], [.55,.55])
            line([2.5, 2.7], [.45,.45])
            text(-.3 , .5, 'V_{S(LL)} = ')
            text(0.4 , .675, 'KV')
            set(VsmcHandle, 'visible', 'on')

        elseif Sri==1
            line([1.65, 2.2], [0.9, 0.9]),  
            line([2.35, 3], [0.9, 0.9]),  
            line([2.2, 2.2], [1, 0.8]),  
            line([2.35, 2.35], [1, 0.8]), 
            text(-.3 , .5, 'V_{S(LL)}\angle\delta_s', 'Color', 'r')
            set(VsmcHandle, 'visible', 'off')

        elseif ShSr==1
            line([2.6, 2.6], [.9, .55])
            line([2.6, 2.6], [.45, .1])
            line([2.5, 2.7], [.55,.55])
            line([2.5, 2.7], [.45,.45])
            line([1.65, 2.2], [0.9, 0.9]),  
            line([2.35, 3], [0.9, 0.9]),  
            line([2.2, 2.2], [1, 0.8]),  
            line([2.35, 2.35], [1, 0.8]), 
            text(-.3 , .5, 'V_{S(LL)} = ')
            text(0.4 , .675, 'KV')
            set(VsmcHandle, 'visible', 'on')
        
        else, end
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(3.2, -.25,'|V_{R(LL)}| KV')
        text(4.25, -.25, '\delta_R')
        text(4.45,  -.25, '\circ')
        text(3.15, .645, 'P_{Load(3\phi)} ='), text(3.15, .345, 'Q_{Load(3\phi)} =')
        text(4.3,.62,'MW')
        text(4.3,.32,'Mvar')
        text(3.65, .2, '+ lggging pf')
        text(3.65, .1, ' - leading pf')
        text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        
        axis off
        hold off    
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        VsmcHandle=findobj(gcbf,'Tag','VscEdit');
        Vsm=eval(get(VsmcHandle,'String'));
        VrmdHandle=findobj(gcbf,'Tag','VrdEdit');
        Vrm=eval(get(VrmdHandle,'String'));
        drdHandle=findobj(gcbf,'Tag','drdEdit');
        dr=eval(get(drHandle,'String'));
        Pr=eval(get(PrHandle,'String'));
        Qr=eval(get(QrHandle,'String'));
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'on')
        set(QrHandle, 'visible', 'on')
        set(VsmHandle, 'visible', 'off')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off');
        set(VrNLHandle, 'visible', 'off');
        set(CapCompHandle, 'visible', 'on')  
        set(CapFrameHandle, 'visible', 'on')
        set(ShtHandle, 'visible', 'on')
        set(SriHandle, 'visible', 'on')
        set(ShSrHandle, 'visible', 'on')
        set(VrmdHandle, 'visible', 'on')
        set(drdHandle, 'visible', 'on')
        set(MVAratHandle, 'visible', 'off')  
        set(pfratHandle, 'visible', 'off')  
        set(IthHandle, 'visible', 'off') 
        set(VratHandle, 'visible', 'off')  
     if Sri==1 | ShSr==1
        set(CaptextHandle, 'visible', 'on')  
        set(kcEditHandle, 'visible', 'on')  
        elseif Sht==1
        set(CaptextHandle, 'visible', 'off')  
        set(kcEditHandle, 'visible', 'off')  
     else, end
   elseif AM==8 
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 7 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
        line([1.65, 3], [0.9, 0.9]),  line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(1.7,.63,'|V_{R(LL)}| =')
        text(2.45, .8, 'KV')
        text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        text(0 , .5, 'V_S\angle\delta_S^\circ', 'Color', [1 0 0])
        %text(0 , .8, 'S_{S(3\phi)}', 'Color', [1 0 0])
        axis off
        hold off
        Vrm=eval(get(VrmHandle,'String'));
        dr=eval(get(drHandle,'String'));
        Pr=eval(get(PrHandle,'String'));
        Qr=eval(get(QrHandle,'String'));
        set(VrmHandle, 'visible', 'on')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        set(VsmHandle, 'visible', 'off')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        Zr=eval(get(ZrHandle,'String'));
        set(ZrHandle, 'visible', 'off');
        set(VrNLHandle, 'visible', 'off');
        set(CapCompHandle, 'visible', 'off')  
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(VsmcHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off') 
    set(kcEditHandle, 'visible', 'off') 
    set(MVAratHandle, 'visible', 'off')  
    set(pfratHandle, 'visible', 'off')  
    set(IthHandle, 'visible', 'off') 
    set(VratHandle, 'visible', 'off')  
elseif AM==9 
    VsmcHandle=findobj(gcbf,'Tag','VscEdit');
    Vsm=eval(get(VsmcHandle,'String'));
    MVAratHandle=findobj(gcbf,'Tag','MVAratEdit');
    MVArat=eval(get(MVAratHandle,'String'));
    pfratHandle=findobj(gcbf,'Tag','pfratEdit');
    pfrat=eval(get(QsHandle,'String'));      
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 6 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
        line([1.65, 3], [0.9, 0.9]),  line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')       
        text(3.2, .8, 'Long line voltage profile for') 
        text(3.2,.675, '\bullet  Noload')
        text(3.2,.55, '\bullet  SIL')
        text(3.2,.425, '\bullet  Rated load')
        text(3.2,.3, '\bullet  Short circuit')       
        text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        text(-.6 , .475, 'Rated pf')
        text(0.25 , .675, 'V_{S(LL)}')
        text(0.75 , .52, 'KV')      
        text(-0.6, .8, 'Rated MVA')
        axis off
        hold off
        set(VrmHandle, 'visible', 'off')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        set(VsmHandle, 'visible', 'off')

        set(VsmcHandle, 'visible', 'on')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        set(ZrHandle, 'visible', 'off');
        set(VrNLHandle, 'visible', 'off');
    set(CapCompHandle, 'visible', 'off')  
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')  
    set(kcEditHandle, 'visible', 'off') 
    set(MVAratHandle, 'visible', 'on')  
    set(pfratHandle, 'visible', 'on')  
    set(IthHandle, 'visible', 'off')
    set(VratHandle, 'visible', 'off')  
elseif AM==10
     MVAratHandle=findobj(gcbf,'Tag','MVAratEdit');
     MVArat=eval(get(MVAratHandle,'String'));
     IthHandle=findobj(gcbf,'Tag','IthEdit');
     Ith=eval(get(IthHandle,'String'));
     VrmHandle=findobj(gcbf,'Tag','VrEdit');
     Vrm=eval(get(VrmHandle,'String'));
     VsmcHandle=findobj(gcbf,'Tag','VscEdit');
     Vsm=eval(get(VsmcHandle,'String'));
        set(RedAnalysisHandle, 'visible', 'off')
        %Ckt for analysis 6 
        axes(handles.PortAxes)    % Select the proper axes
        axis([-.05 3.4  0 1])
        line([0, 1], [0.9, 0.9]), line([0, 1], [0.1, 0.1])
        hold on 
        line([1.65, 3], [0.9, 0.9]),  line([1.65, 3], [0.1, 0.1])
        line([1  1 1.65  1.65 1], [0  1  1  0  0])
        line([3.015 3.015],[0.8875  0.75]), line([3.015 3.015],[0.1055  0.25])
        line([2.9  2.9  3.1  3.1  2.9],[.25  .75  .75 .25  .25])
        text(-0.025,0.8855, '\circ','Color', 'b')
        text(-0.025,0.085, '\circ','Color', 'b')
        text(3, 0.8855, '\circ','Color', 'b')
        text(3 ,0.085, '\circ','Color', 'b')
        text(1.15, .6, 'A   B')
        text(1.15, .4, 'C   D')
        text(-.8 , .475, 'Line Ampacity')
        text(0.05, .3, 'A/\phi')
        text(0.25 , .675, 'V_{S(LL)}')
        text(0.75 , .52, 'KV')      
        text(-0.6, .8, 'Rated L-L Voltage')
        text(1.7,.63,'|V_{R(LL)}| =')
        text(2.45, .8, 'KV')
        axis off
        hold off
        set(MVAratHandle, 'visible', 'off')  
        set(pfratHandle, 'visible', 'off')  
        set(IthHandle, 'visible', 'on')  
        set(VratHandle, 'visible', 'on')  

        set(VrmHandle, 'visible', 'on')
        set(drHandle, 'visible', 'off')
        set(PrHandle, 'visible', 'off')
        set(QrHandle, 'visible', 'off')
        set(VsmHandle, 'visible', 'off')

        set(VsmcHandle, 'visible', 'on')
        set(dsHandle, 'visible', 'off')
        set(PsHandle, 'visible', 'off')
        set(QsHandle, 'visible', 'off')
        set(ZrHandle, 'visible', 'off');
        set(VrNLHandle, 'visible', 'off');
    set(CapCompHandle, 'visible', 'off')  %%%%%%%%%?
    set(CapFrameHandle, 'visible', 'off')
    set(ShtHandle, 'visible', 'off')
    set(SriHandle, 'visible', 'off')
    set(ShSrHandle, 'visible', 'off')
    set(VrmdHandle, 'visible', 'off')
    set(drdHandle, 'visible', 'off')
    set(CaptextHandle, 'visible', 'off')  %%%%%%%%%?
    set(kcEditHandle, 'visible', 'off') 
end
elseif pram==0
set(RedStep13Handle, 'visible', 'on')
set(handles.listbox3,'Value', 1);
end
% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
global w Length model pram f w Zc Gamal Z Y A B C D 
AM=get(handles.listbox3,'Value');
RedAnalysisHandle=findobj(gcbf,'Tag','RedAnalysis');
axes(handles.ResultAxes)    % Select the proper axes
hrst=gca;
cla(hrst)
Shthandle=findobj(gcbf,'Tag','ShtEdit');
Sht=get(Shthandle,'Value');
Srihandle=findobj(gcbf,'Tag','SriEdit');
Sri=get(Srihandle,'Value');
ShSrhandle=findobj(gcbf,'Tag','ShSrEdit');
ShSr=get(ShSrhandle,'Value');
kcEditHandle=findobj(gcbf,'Tag','kcEdit');
kc=eval(get(kcEditHandle,'String'));
ABCD=[A B;C D];
    if AM==2
    VrmHandle=findobj(gcbf,'Tag','VrEdit');
    Vrm=eval(get(VrmHandle,'String'));
    drHandle=findobj(gcbf,'Tag','drEdit');
    dr=eval(get(drHandle,'String')); drdg=dr;
    PrHandle=findobj(gcbf,'Tag','PrEdit');
    Pr=eval(get(PrHandle,'String'));
    QrHandle=findobj(gcbf,'Tag','QrEdit');
    Qr=eval(get(QrHandle,'String'));
    drrad=dr*pi/180;
    Vr = Vrm*(cos(drrad) +j*sin(drrad))/sqrt(3);   % Rec.-end phase voltage
    Sr = Pr +j*Qr;
    Ir = conj(Sr)/(3*conj(Vr));  % Rec. end current  kA
    Irm = abs(Ir)*1000;
    angIr = angle(Ir); pfr = cos(drrad - angIr); angIr = angIr*180/pi;
    VsIs = ABCD*[Vr; Ir];
    Vs = VsIs(1);  Is = VsIs(2);
    Vsm = abs(Vs)*sqrt(3);
    ds = angle(Vs); dsdg = ds*180/pi;
    Ism = abs(Is)*1000;
    angIs = angle(Is); pfs = cos(ds - angIs );  angIs = angIs*180/pi;
    Ss = 3*Vs*conj(Is);  Ps = real(Ss); Qs = imag(Ss);
    Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
    Reg = 100*(Vsm/abs(ABCD(1,1)) - Vrm)/Vrm;
    Eff = Pr/Ps*100;
elseif AM==3
    VsmHandle=findobj(gcbf,'Tag','VsEdit');
    Vsm=eval(get(VsmHandle,'String'));
    dsHandle=findobj(gcbf,'Tag','dsEdit');
    ds=eval(get(dsHandle,'String')); dsdg=ds;
    PsHandle=findobj(gcbf,'Tag','PsEdit');
    Ps=eval(get(PsHandle,'String'));
    QsHandle=findobj(gcbf,'Tag','QsEdit');
    Qs=eval(get(QsHandle,'String'));
    dsrad=ds*pi/180;
    Vs = Vsm*(cos(dsrad) +j*sin(dsrad))/sqrt(3);   % Rec.-end phase voltage
    Ss = Ps +j*Qs;
    Is = conj(Ss)/(3*conj(Vs));  % Rec. end current  kA
    Ism = abs(Is)*1000;
    angIs = angle(Is); pfs = cos(dsrad - angIs); angIs = angIs*180/pi;
    VrIr = inv(ABCD)*[Vs; Is];
    Vr = VrIr(1);  Ir = VrIr(2);
    Vrm = abs(Vr)*sqrt(3);
    dr = angle(Vr); drdg = dr*180/pi;
    Irm = abs(Ir)*1000;
    angIr = angle(Ir); pfr = cos(dr - angIr ); angIr = angIr*180/pi;
    Sr = 3*Vr*conj(Ir);  Pr = real(Sr); Qr = imag(Sr);
    Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
    Reg = 100*(Vsm/abs(ABCD(1,1)) - Vrm)/Vrm;
    Eff = Pr/Ps*100;
    elseif AM==1
    set(RedAnalysisHandle, 'visible', 'on')
elseif AM==4
    VrmHandle=findobj(gcbf,'Tag','VrEdit');
    Vrm=eval(get(VrmHandle,'String'));
    drHandle=findobj(gcbf,'Tag','drEdit');
    dr=eval(get(drHandle,'String')); drdg=dr;
    drrad=dr*pi/180;
    Vr = Vrm*(cos(drrad) +j*sin(drrad))/sqrt(3);   % Rec.-end phase voltage
    ZrHandle=findobj(gcbf,'Tag','ZrEdit');
    Zr=eval(get(ZrHandle,'String'));
    Ir = Vr/Zr;  % Rec. end current  kA
    Sr = 3*Vr*conj(Ir); Pr =real(Sr); Qr = imag(Sr);
    Irm = abs(Ir)*1000;
    angIr = angle(Ir); pfr = cos(drrad - angIr); angIr = angIr*180/pi;
    VsIs = ABCD*[Vr; Ir];
    Vs = VsIs(1);  Is = VsIs(2);
    Vsm = abs(Vs)*sqrt(3);
    ds = angle(Vs); dsdg = ds*180/pi;
    Ism = abs(Is)*1000;
    angIs = angle(Is); pfs = cos(ds - angIs ); angIs = angIs*180/pi;
    Ss = 3*Vs*conj(Is);  Ps = real(Ss); Qs = imag(Ss);
    Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
    Reg = 100*(Vsm/abs(ABCD(1,1)) - Vrm)/Vrm;
    Eff = Pr/Ps*100;
 elseif AM==5
    VsmHandle=findobj(gcbf,'Tag','VsEdit');
    Vsm=eval(get(VsmHandle,'String'));
    dsHandle=findobj(gcbf,'Tag','dsEdit');
    ds=eval(get(dsHandle,'String')); dsdg=ds;
    VrNLHandle=findobj(gcbf,'Tag','VrNLEdit');
    VrNL=eval(get(VrNLHandle,'String'));
    dsrad=ds*pi/180;
    Vs = Vsm*(cos(dsrad) +j*sin(dsrad))/sqrt(3);   % Rec.-end phase voltage
    dsrad=ds*pi/180;
    Vs = Vsm*(cos(dsrad) +j*sin(dsrad))/sqrt(3);   % Rec.-end phase voltage
    Vro = Vs/(ABCD(1,1));
    Is = ABCD(2,1)*Vro;
    Vrm = abs(Vro)*sqrt(3); 
    dr = angle(Vro); drdg = dr*180/pi;
    Ism = abs(Is)*1000;
    angIs = angle(Is); pfs = cos(dsrad - angIs ); angIs = angIs*180/pi;
    ths = angIs - ds;
    elseif AM==6
    VsmHandle=findobj(gcbf,'Tag','VsEdit');
    Vsm=eval(get(VsmHandle,'String'));
    dsHandle=findobj(gcbf,'Tag','dsEdit');
    ds=eval(get(dsHandle,'String')); dsdg=ds;
    VrNLHandle=findobj(gcbf,'Tag','VrNLEdit');
    VrNL=eval(get(VrNLHandle,'String'));
    dsrad=ds*pi/180;
    Vs = Vsm*(cos(dsrad) +j*sin(dsrad))/sqrt(3);   % Rec.-end phase voltage
    dsrad=ds*pi/180;
    Vr = 0;
    Vrm = 0;
    Ir = Vs/ABCD(1,2);
    Irm = abs(Ir)*1000;
    angIr = angle(Ir); angIr = angIr*180/pi;
    Is= ABCD(2,2)*Ir;
    Ism = abs(Is)*1000;
    angIs = angle(Is); angIs = angIs*180/pi; 
elseif AM==7
    VsmcHandle=findobj(gcbf,'Tag','VscEdit');
    Vsmc=eval(get(VsmcHandle,'String'));
    VrmdHandle=findobj(gcbf,'Tag','VrdEdit');
    Vrmd=eval(get(VrmdHandle,'String'));
    drdHandle=findobj(gcbf,'Tag','drdEdit');
    dr=eval(get(drdHandle,'String')); drdg=dr;
    PrHandle=findobj(gcbf,'Tag','PrEdit');
    Pr=eval(get(PrHandle,'String'));
    QrHandle=findobj(gcbf,'Tag','QrEdit');
    Qload=eval(get(QrHandle,'String'));
    drrad=dr*pi/180;
    Vrd = Vrmd*(cos(drrad) +j*sin(drrad))/sqrt(3);   % Rec.-end phase voltage
    Sload = Pr +j*Qload;
    if Sht ==1
        ba = angle( ABCD(1,2) )- angle(ABCD(1,1));
        S1 = Vsmc*Vrmd/abs(ABCD(1,2)); S2 = abs(ABCD(1,1))*Vrmd^2/abs(ABCD(1,2));
        bd = acos( (Pr + S2*cos(ba))/S1 );
        Qr = S1*sin(bd) - S2*sin(ba);
        Qc = Qr - Qload;
        Sr = Pr + j*Qr;
        Xc = Vrmd^2/abs(Qc); Cap = 1000000/(2*pi*60*Xc);
        Ir = conj(Sr)/(3*conj(Vrd));  % Rec. end current  kA
        Irm = abs(Ir)*1000;
        angIr = angle(Ir); pfr = cos(drrad - angIr); angIr = angIr*180/pi;
        Iload = conj(Sload)/(3*conj(Vrd));  % Rec. end current  kA
        Iloadm = abs(Iload)*1000;
        angIl = angle(Iload); pfl = cos(drrad - angIl); angIl = angIl*180/pi;
        Ic = Ir - Iload;
        Icm = abs(Ic)*1000;
        angIc= angle(Ic)*180/pi;
        VsIs = ABCD*[Vrd; Ir];
        Vsc = VsIs(1);  Is = VsIs(2);
        Vsmc = abs(Vsc)*sqrt(3);
        ds = angle(Vsc); dsdg = ds*180/pi;
        Ism = abs(Is)*1000;
        angIs = angle(Is); pfs = cos(ds - angIs ); angIs = angIs*180/pi;
        Ss = 3*Vsc*conj(Is);  Ps = real(Ss); Qs = imag(Ss);
        Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
        Reg = 100*(Vsmc/abs(ABCD(1,1)) - Vrmd)/Vrmd;
        Eff = Pr/Ps*100;
    elseif Sri==1
        Z = ABCD(1,2); Y = 2*ABCD(2,1)/(ABCD(1,1)+1);
        kcEditHandle=findobj(gcbf,'Tag','kcEdit');
        kc=eval(get(kcEditHandle,'String'));
        Xc = -j*kc*imag(Z)/100;  caps = 1000000/(2*pi*60*abs(Xc));
        Z2 = Z + Xc;
        ssrf=f*sqrt(abs(Xc)/imag(Z));
        ABCDnu = [1+Z2*Y/2  Z2; Y*(1+Z2*Y/4) 1+Z2*Y/2];
        Qr=Qload;
        Sr = Pr +j*Qr;
        Ir = conj(Sr)/(3*conj(Vrd));  % Rec. end current  kA
        Irm = abs(Ir)*1000;
        angIr = angle(Ir); pfr = cos(drrad - angIr); angIr = angIr*180/pi;
        VsIs = ABCDnu*[Vrd; Ir];
        Vsc = VsIs(1);  Is = VsIs(2);
        Vsmc = abs(Vsc)*sqrt(3);
        ds = angle(Vsc); dsdg = ds*180/pi;
        Ism = abs(Is)*1000;
        angIs = angle(Is); pfs = cos(ds - angIs ); angIs = angIs*180/pi;
        Ss = 3*Vsc*conj(Is);  Ps = real(Ss); Qs = imag(Ss);
        Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
        Iline = Ir + Y/2*Vrd;
        Qcap =  abs(Xc)*(abs(Iline))^2;
        Reg = 100*(Vsmc/abs(ABCDnu(1,1)) - Vrmd)/Vrmd;
        Eff = Pr/Ps*100;
    elseif ShSr==1  
        Z = ABCD(1,2); Y = 2*ABCD(2,1)/(ABCD(1,1)+1);
    kcEditHandle=findobj(gcbf,'Tag','kcEdit');
    kc=eval(get(kcEditHandle,'String'));
    Xcsr = -j*kc*imag(Z)/100;  csr = 1000000/(2*pi*60*abs(Xcsr));
    Z2 = Z + Xcsr;
    ssrf = f*sqrt(abs(Xcsr)/imag(Z));
    ABCDnu = [1+Z2*Y/2  Z2; Y*(1+Z2*Y/4) 1+Z2*Y/2];
    ba = angle( ABCDnu(1,2) )- angle(ABCDnu(1,1));
    S1 = Vsmc*Vrmd/abs(ABCDnu(1,2)); S2 = abs(ABCDnu(1,1))*Vrmd^2/abs(ABCDnu(1,2));
    bd = acos( (Pr + S2*cos(ba))/S1 );
    Qr = S1*sin(bd) - S2*sin(ba);
    Qcsh = Qr - Qload;
    Sr = Pr + j*Qr;
    Xcsh = Vrmd^2/abs(Qcsh); csh = 1000000/(2*pi*60*Xcsh);
    Ir = conj(Sr)/(3*conj(Vrd));  % Rec. end current  kA
    Irm = abs(Ir)*1000;
    angIr = angle(Ir); pfr = cos(drrad - angIr); angIr = angIr*180/pi;
    Iload = conj(Sload)/(3*conj(Vrd));  % Rec. end current  kA
    Iloadm = abs(Iload)*1000;
    angIl = angle(Iload); pfl = cos(drrad - angIl); angIl = angIl*180/pi;
    Icsh = Ir - Iload;
    Icshm = abs(Icsh)*1000;
    angIc= angle(Icsh)*180/pi;
    VsIs = ABCDnu*[Vrd; Ir];
    Vsc = VsIs(1);  Is = VsIs(2);
    Vsmc = abs(Vsc)*sqrt(3);
    ds = angle(Vsc); dsdg = ds*180/pi;
    Ism = abs(Is)*1000;
    angIs = angle(Is); pfs = cos(ds - angIs ); angIs = angIs*180/pi;
    Ss = 3*Vsc*conj(Is);  Ps = real(Ss); Qs = imag(Ss);
    Sl = Ss - Sr;  Pl = real(Sl); Ql = imag(Sl);
    Iline = Ir + Y/2*Vrd;
    Qcsr =  abs(Xcsr)*(abs(Iline))^2;
    Reg = 100*(Vsmc/abs(ABCDnu(1,1)) - Vrmd)/Vrmd;
    Eff = Pr/Ps*100;
elseif AM==8 
    VrmHandle=findobj(gcbf,'Tag','VrEdit');
    Vrm=eval(get(VrmHandle,'String'));
elseif AM==9 
    VsmcHandle=findobj(gcbf,'Tag','VscEdit');
    Vsm=eval(get(VsmcHandle,'String'));
    MVAratHandle=findobj(gcbf,'Tag','MVAratEdit');
    MVArat=eval(get(MVAratHandle,'String'));
    pfratHandle=findobj(gcbf,'Tag','pfratEdit');
    pfrat=eval(get(pfratHandle,'String'));
elseif AM==10 
     VsmcHandle=findobj(gcbf,'Tag','VscEdit');
     Vsm=eval(get(VsmcHandle,'String'));
     VrmHandle=findobj(gcbf,'Tag','VrEdit');
     Vrm=eval(get(VrmHandle,'String'));
     VratHandle=findobj(gcbf,'Tag','VratEdit');
     Vrate=eval(get(VratHandle,'String'));
     IthHandle=findobj(gcbf,'Tag','IthEdit');
     Ith=eval(get(IthHandle,'String'));
 else, end
elseif AM==1
    set(RedAnalysisHandle, 'visible', 'on')  
end
    fprintf(' \n')
    if AM==2, fprintf(' Line performance for specified receiving end quantities \n'), end
    if AM==3, fprintf(' Line performance for specified sending end quantities \n'), end
    if AM==4, fprintf(' Line performance for specified load impedance \n'), end
    fprintf(' ------------------------------------------------------- \n')
 if AM==2 | AM==3 | AM==4
    fprintf(' Vr = %g kV (L-L)', Vrm), fprintf('  at %gø \n', drdg)
    fprintf(' Pr = %g MW', Pr), fprintf('   Qr = %g Mvar \n', Qr)
    fprintf(' Ir = %g A', Irm), fprintf('  at %gø', angIr), fprintf('  PFr = %g', pfr)

    if abs(Qr) >0.01 & Qr > 0, fprintf(' lagging '),end
    if abs(Qr) >0.01 & Qr < 0, fprintf(' leading '),end
    fprintf(' \n')
    fprintf(' Vs = %g kV (L-L)', Vsm), fprintf('  at %gø \n', dsdg)
    fprintf(' Is = %g A', Ism), fprintf('  at %gø', angIs), fprintf('  PFs = %g', pfs)
    if abs(Qs) >0.01 & Qs > 0, fprintf(' lagging '),end
    if abs(Qs) >0.01 & Qs < 0, fprintf(' leading '),end
    fprintf(' \n')
    fprintf(' Ps = %-10.3f MW', Ps), fprintf('   Qs = %-10.3f Mvar \n', Qs)
    fprintf(' PL = %-10.3f MW', Pl), fprintf('   QL = %-10.3f Mvar \n', Ql)
    fprintf(' Percent Voltage Regulation   = %g \n', Reg)
    fprintf(' Transmission line efficiency = %g \n', Eff)
    axes(handles.ResultAxes)    % Select the proper axes
    axis([0 1  -0.25 1])
    text(.05, 1, ['V_r = ', num2str(abs(Vr)), '\angle', num2str(drdg), '^\circ KV,    ', '|V_{r(LL)}| = ', num2str(Vrm), ' KV' ])
    text(.05, .85, ['P_{r(3\phi)} = ', num2str(Pr), ' MW', '     Q_{r(3\phi)} = ', num2str(Qr), ' Mvar'])
    text(.05, 0.7, ['I_r = ', num2str(abs(Irm)), '\angle', num2str(angIr), '^\circ A,    ', 'PF_r = ', num2str(pfr), ])
    if abs(Qr) >0.01 & Qr > 0, text(0.05, 0.7,'                                                                lagging '), end
    if abs(Qr) >0.01 & Qr < 0, text(0.05 , .7,'                                                                leading '),end
    text(.05, 0.55, ['V_s = ', num2str(abs(Vs)), '\angle', num2str(dsdg), '^\circ KV,    ', '|V_{s(LL)}| = ', num2str(Vsm), ' KV' ])
    text(.05, 0.4, ['I_s = ', num2str(abs(Ism)), '\angle', num2str(angIs), '^\circ A,    ', 'PF_s = ', num2str(pfs), ])
    if abs(Qs) >0.01 & Qs > 0, text(.05, .4, '                                                                   lagging '),end
    if abs(Qs) >0.01 & Qs < 0, text(.05, 0.4,'                                                                   leading '),end
    text(.05, .25, ['P_{s(3\phi)} = ', num2str(Ps), 'MW', '     Q_{s(3\phi)} = ', num2str(Qs), 'Mvar' ])
    text(.05, .1, ['P_{L(3\phi)} =  ', num2str(Pl), 'MW', '     Q_{L(3\phi)} =  ', num2str(Ql), 'Mvar' ])
    text(0.05, -.05, ['Percent Voltage Regulation   = ', num2str(Reg)])
    text(0.05, -.20, ['Transmission line efficiency = ', num2str(Eff)])
    axis off
elseif AM==5
    fprintf(' Open line and shunt reactor compensation \n')
    fprintf(' ---------------------------------------- \n')
    fprintf(' Vs = %g kV (L-L)', Vsm), fprintf('  at %gø \n', dsdg)
    fprintf(' Vr = %g kV (L-L)', Vrm), fprintf('  at %gø \n', drdg)
    fprintf(' Is = %g A', Ism), fprintf('  at %gø', angIs), fprintf('  PFs = %g', pfs)

    if abs(ths) >0.01 & ths <0, fprintf(' lagging '),end
    if abs(ths) >0.01 & ths >0, fprintf(' leading '),end
    fprintf(' \n')
    if abs(Vrm) <= abs(Vsm)
      shrtline= [
    '                                                            '
    ' Line charging capacitance is zero. A short line is assumed '
    ' VR(nl) = VS. Shunt reactor compensation is not required.   '
    '                                                            '];
    disp(shrtline)
    else, end
    if abs(Vrm) <= abs(Vsm)
    set(VrNLHandle, 'visible', 'off')
    elseif abs(Vrm) > abs(Vsm)
    set(VrNLHandle, 'visible', 'on')
    text(.05, .55,  'Desired no load receiving-end voltage     KV', 'Color', [0 0 1])
    text(.05, 0.45, 'with shunt reactor compensation', 'Color', [0 0 1])
    else, end
    k = Vsm/VrNL;
    Xr =-j*ABCD(1,2)/(k - ABCD(1,1));
    Qind = VrNL^2/Xr;
    fprintf(' \n Desired no load receiving end voltage = %g kV \n',VrNL)
    fprintf(' Shunt reactor reactance = %g ohm \n', Xr)
    fprintf(' Shunt reactor rating = %g Mvar \n', Qind)
    axis([0 1  -0.25 1])
    text(.05, 1.0, ['V_s = ', num2str(abs(Vs)), '\angle', num2str(dsdg), '^\circ KV,    ', '|V_{s(LL)}| = ', num2str(Vsm), ' KV' ])
    text(.05, 0.85, ['V_r = ', num2str(abs(Vro)), '\angle', num2str(drdg), '^\circ KV,    ', '|V_{R(LL)}| = ', num2str(Vrm), ' KV' ])
    text(.05, 0.70, ['I_s = ', num2str(abs(Ism)), '\angle', num2str(angIs), '^\circ A,    ', 'PF_s = ', num2str(pfs), ])
    if abs(ths) >0.01 & ths > 0, text(0.05, 0.7,'                                                                      lagging '), end
    if abs(ths) >0.01 & ths < 0, text(0.05 , .7,'                                                                      leading '),end
    if abs(Vrm) <= abs(Vsm)
    text(.05, 0.55, 'Line charging capacitance is zero. A short line is assumed.', 'Color', [0 0 1])
    text(.05, 0.40, 'V_{R(nl)} = V_S. Shunt reactor compensation is not required', 'Color', [0 0 1])
    elseif abs(Vrm) > abs(Vsm)
    text(.05, 0.3, ['Shunt reactor reactance = ', num2str(real(Xr)), ' \Omega'])
    text(.05, 0.15, ['Shunt reactor rating = ', num2str(real(Qind)), ' MW'])
    Zc = sqrt(ABCD(1,2)/ABCD(2,1));
    gama = acosh(ABCD(1,1))/Length;
    Vr=VrNL/sqrt(3);
    Ir = Vr/(j*Xr);
    x=0:Length/50:Length;
    a = cosh(gama*x); b = Zc*sinh(gama*x); c = 1/Zc*sinh(gama*x);
    Vx = Vr*a + Ir*b;
    Ix = Vr*c + Ir*a;
    VxL=sqrt(3)*abs(Vx);
    Vro = Vs./cosh(gama*x);
    Vrm = sqrt(3)*abs(Vro);
    vscale1 = 0.9*Vsm;
    vscale2 = ceil(max(Vrm)/10)*10;
    tx1 = .7*Length; tx2=.75*Length;
    ynl= .995*max(Vrm); ycmp=.993*VxL(1);
    xl = Length - x;
    h = figure;
    plot(xl, VxL, x, Vrm,'-'), grid
    axis([0 , Length, vscale1, vscale2])
    title(['Voltage profile of an unloaded line, X_{Lsh} = ', num2str(real(Xr)),' \Omega'])
    ylabel('Line-Line kV'),
    sen = vscale1-.08*(vscale2-vscale1);
    rec = Length -.2*Length;
    text(0, sen , 'Sending end')
    text(rec, sen, 'Receiving end')
    text(tx1, ynl, 'Uncompensated')
    text(tx2, ycmp, 'Compensated')
    else, end
elseif AM==6
    fprintf(' \n')
    fprintf(' Line short-circuited at the receiving end \n')
    fprintf(' ----------------------------------------- \n')
    fprintf(' Vs = %g kV (L-L)', Vsm), fprintf('  at %gø \n', ds)
    fprintf(' Ir = %g A', Irm), fprintf('  at %gø \n', angIr)
    fprintf(' Is = %g A', Ism), fprintf('  at %gø \n', angIs)
    axis([0 1  -0.25 1])
    text(.05, 1.0, ['V_s = ', num2str(abs(Vs)), '\angle', num2str(ds), '^\circ KV,    ', '|V_{s(LL)}| = ', num2str(Vsm), ' KV' ])
    text(.05, 0.850, ['I_s = ', num2str(abs(Irm)), '\angle', num2str(angIr)])
    text(.05, 0.70, ['I_R = ', num2str(abs(Ism)), '\angle', num2str(angIs)])
elseif AM==7
if Sht~=0 | Sri~=0 | ShSr~=0
    fprintf(' \n')
    if Sht==1, fprintf(' Shunt capacitive compensation \n'), else, end
        if Sri==1, fprintf(' Series capacitor compensation \n'), else, end
        if ShSr==1, fprintf(' Series and shunt capacitor compensation \n'), else, end
fprintf(' ----------------------------- \n')
fprintf(' Vs = %g kV (L-L)', Vsmc), fprintf('  at %gø \n', dsdg)
fprintf(' Vr = %g kV (L-L)', Vrmd), fprintf('  at %gø \n', dr)
    if Sht==1
    fprintf(' Pload = %g MW', Pr), fprintf('   Qload = %g Mvar \n', Qload)
    fprintf(' Load current = %g A', Iloadm), fprintf('  at %gø', angIl), fprintf('  PFl = %g', pfl)
    if Qload > 0, fprintf(' lagging \n'),elseif Qload < 0 fprintf(' leading \n'), end
    fprintf(' Required shunt capcitor: %g ohm,', Xc)
    fprintf('  %g micro F,',Cap), fprintf('  %g Mvar \n', abs(Qc))
    fprintf(' Shunt capacitor current = %g A', Icm), fprintf('  at %gø \n', angIc)
    else, end
    if Sri==1
        fprintf(' Required series capacitor:  %g ohm,', abs(Xc))
        fprintf('   %g micro F,', caps), fprintf('   %g Mvar \n', Qcap)
        fprintf(' Subsynchronous resonant frequency = %g Hz \n', ssrf)
    else, end
    if ShSr==1
    fprintf(' Pload = %g MW', Pr), fprintf('   Qload = %g Mvar \n', Qload)
    fprintf(' Load current = %g A', Iloadm), fprintf('  at %gø', angIl), fprintf('  PFl = %g', pfl)
    if Qload > 0, fprintf(' lagging \n'),elseif Qload < 0 fprintf(' leading \n'), end
    fprintf(' Required shunt capcitor: %g ohm,',Xcsh)
    fprintf('  %g micro F,', csh), fprintf(' %g Mvar \n', abs(Qcsh))
    fprintf(' Shunt capacitor current = %g A', Icshm), fprintf('  at %gø \n', angIc)
    fprintf(' Required series capacitor: %g ohm,', abs(Xcsr))
    fprintf('  %g micro F,', csr), fprintf(' %g Mvar \n', Qcsr)
    fprintf(' Subsynchronous resonant frequency = %g Hz \n', ssrf)
    else, end
    fprintf(' Pr = %-10.3f MW', Pr), fprintf('   Qr = %-10.3f Mvar \n', Qr)
    fprintf(' Ir = %g A', Irm), fprintf('  at %gø', angIr), fprintf('  PFr = %g', pfr)
    if abs(Qr) > 0.01 & Qr >0  , fprintf(' lagging '),end
    if abs(Qr) < 0.01 & Qr < 0 , fprintf(' leading '),end
    fprintf(' \n')
    fprintf(' Is = %g A', Ism), fprintf('  at %gø', angIs), fprintf('  PFs = %g', pfs)
    if abs(Qs) >0.01 & Qs > 0, fprintf(' lagging '),end
    if abs(Qs) >0.01 & Qs < 0, fprintf(' leading '),end
    fprintf(' \n')
    fprintf(' Ps = %-10.3f MW', Ps), fprintf('   Qs = %-10.3f Mvar \n', Qs)
    fprintf(' PL = %-10.3f MW', Pl), fprintf('   QL = %-10.3f Mvar \n', Ql)
    fprintf(' Percent Voltage Regulation   = %g \n', Reg)
    fprintf(' Transmission line efficiency = %g \n', Eff) 
    axes(handles.ResultAxes)    % Select the proper axes
    axis([0 1  -0.25 1])
    text(.05, 1.1, ['V_s = ', num2str(abs(Vsc)), '\angle', num2str(dsdg), '^\circ KV,    ', '|V_{s(LL)}| = ', num2str(Vsmc), ' KV' ])
    text(.05, .975, ['V_r = ', num2str(abs(Vrd)), '\angle', num2str(drdg), '^\circ KV,    ', '|V_{r(LL)}| = ', num2str(Vrmd), ' KV' ])
    if Sht ==1
        text(.05, .85, ['P_{Load(3\phi)} = ', num2str(Pr), ' MW', '   Q_{Load(3\phi)} = ', num2str(Qload), ' Mvar'])
        text(.05, 0.725, ['I_L = ', num2str(Iloadm), '\angle', num2str(angIl), '^\circ A,    ', 'PF_L = ', num2str(pfl), ])
        if Qload > 0 , text(0.05, 0.725,'                                                                  lagging '), end
        if Qload < 0 , text(0.05 , .725,'                                                                  leading '),end
        text(.05, .6, ['X_c = ', num2str(Xc), ' \Omega, ', 'C = ', num2str(Cap), ' \muF, ', 'Q_{C(3\phi)} = ', num2str(Qc), ' Mvar'])
        text(.05, 0.475, ['I_c = ', num2str(Icm), '\angle', num2str(angIc), '^\circ A'])
        text(.05, .35, ['P_{r(3\phi)} = ', num2str(Pr), ' MW', '     Q_{r(3\phi)} = ', num2str(Qr), ' Mvar'])
    else, end
    if Sri ==1
        text(.05, .8, ['P_{r(3\phi)} = ', num2str(Pr), ' MW', '   Q_{r(3\phi)} = ', num2str(Qr), ' Mvar'])
        text(.05, .5, ['X_{c(ser)} = ', num2str(abs(Xc)), ' \Omega, ', 'C = ', num2str(caps), ' \muF, ', 'Q_{C(3\phi)} = ', num2str(Qcap), ' Mvar'])
        text(1.05, -.1, ['f_{SSR}= ', num2str(ssrf), ' Hz'])
    else, end
    if ShSr==1
        text(.05, .85, ['P_{Load(3\phi)} = ', num2str(Pr), ' MW', '   Q_{Load(3\phi)} = ', num2str(Qload), ' Mvar'])
        text(.05, 0.725, ['I_L = ', num2str(Iloadm), '\angle', num2str(angIl), '^\circ A,    ', 'PF_L = ', num2str(pfl), ])
        if Qload > 0 , text(0.05, 0.725,'                                                                  lagging '), end
        if Qload < 0 , text(0.05 , .725,'                                                                 leading '),end
        text(.05, .6, ['X_{c(sh)} = ', num2str(abs(Xcsh)), ' \Omega, ', 'C = ', num2str(csh), ' \muF, ', 'Q_{C(3\phi)}= ', num2str(Qcsh), ' Mvar'])
        text(.05, .475, ['X_{c(ser)} = ', num2str(abs(Xcsr)), ' \Omega, ', 'C = ', num2str(csr), ' \muF, ', 'Q_{C(3\phi)} = ', num2str(Qcsr), ' Mvar'])
        text(.05, 0.35, ['I_c = ', num2str(Icshm), '\angle', num2str(angIc), '^\circ A,'])
        text(.4, .35, ['P_{r(3\phi)}= ', num2str(Pr), ' MW', ' Q_{r(3\phi)}= ', num2str(Qr), ' Mvar'])
        text(1.05, -.1, ['f_{SSR}= ', num2str(ssrf), ' Hz'])
    else, end
    text(.05, 0.225, ['I_r = ', num2str(abs(Irm)), '\angle', num2str(angIr), '^\circ A,    ', 'PF_r = ', num2str(pfr), ])
    if abs(Qr) >0.01 & Qr > 0, text(0.05, 0.225,'                                                                  lagging '), end
    if abs(Qr) >0.01 & Qr < 0, text(0.05 , .225,'                                                                leading '),end
    text(.05, 0.1, ['I_s = ', num2str(abs(Ism)), '\angle', num2str(angIs), '^\circ A,    ', 'PF_s = ', num2str(pfs), ])
    if abs(Qs) >0.01 & Qs > 0, text(.05, .1, '                                                                   lagging '),end
    if abs(Qs) >0.01 & Qs < 0, text(.05, 0.1,'                                                                   leading '),end
    text(.05, -.025, ['P_{s(3\phi)} = ', num2str(Ps), ' MW', '     Q_{s(3\phi)} = ', num2str(Qs), ' Mvar' ])
    text(.05, -.15, ['P_{L(3\phi)} =  ', num2str(Pl), ' MW', '     Q_{L(3\phi)} =  ', num2str(Ql), ' Mvar' ])
    text(0.05, -.275, ['Percent Voltage Regulation   = ', num2str(Reg)])
    text(0.05, -.4, ['Transmission line efficiency = ', num2str(Eff)])
    axis off
else, end
elseif AM==8
    VrmHandle=findobj(gcbf,'Tag','VrEdit');
    Vrm=eval(get(VrmHandle,'String'));
    fprintf(' \n')
    fprintf(' Receiving end power circle diagram \n')
    fprintf(' ---------------------------------- \n')
    ba = angle( ABCD(1,2) )- angle(ABCD(1,1));
    delta = 0:3:42;
    d = delta*pi/180;
    Vsm = 1.35*Vrm;
    h=figure;
    hold on
    for k = 1:7
    Vsm = Vsm -.05*Vrm;
    bd = angle(ABCD(1,2)) - d;
    S1 = Vsm*Vrm/abs(ABCD(1,2)); S2 = abs(ABCD(1,1))*Vrm^2/abs(ABCD(1,2));
    Pr = S1*cos(bd) - S2*cos(ba);
    Qr = S1*sin(bd) - S2*sin(ba);
    tx = max(Pr); ty = min(Qr);
    if k ==1
        pm = ceil(max(Pr));
        x = 0:.1*pm:pm; y = zeros(1,length(x));
    else end
    plot(Pr, Qr)
    if k == 1, text( tx, ty, '1.30'), else end
    if k == 2, text( tx, ty, '1.25'), else end
    if k == 3, text( tx, ty, '1.20'), else end
    if k == 4, text( tx, ty, '1.15'), else end
    if k == 5, text( tx, ty, '1.10'), else end
    if k == 6, text( tx, ty, '1.05'), else end
    if k == 7, text( tx, ty, '1.0'), else end
    end
    plot(x,y), grid
    axis([0 pm -pm/2  pm/2]);
    axis('square')
    xlabel('P_r, MW'), ylabel('Q_r,  Mvar')
    title('Power circle diagram  V_s: from V_r to 1.3V_r ')
    hold off
elseif AM==9
    
    if model~=1 & C
    fprintf(' \n')
    fprintf(' Voltage profile for line length up to 1/8 wavelength \n')
    fprintf(' ---------------------------------------------------- \n')
    frqHandle=findobj(gcbf,'Tag','frqedit');
    f=eval(get(frqHandle,'String'));w=2*pi*f;
    if pram==1
        rHandle=findobj(gcbf,'Tag','redit');
        r=eval(get(rHandle,'String'));
        LHandle=findobj(gcbf,'Tag','Ledit');
        L=eval(get(LHandle,'String'));
        CapHandle=findobj(gcbf,'Tag','Capedit');
        Cap=eval(get(CapHandle,'String'));
        Cap
        gHandle=findobj(gcbf,'Tag','gedit');
        g=eval(get(gHandle,'String'));
        z= r + j*w*L*1E-03;  y = g+j*w*Cap*1E-06;
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
     elseif pram==2
        zHandle=findobj(gcbf,'Tag','zedit');
        yHandle=findobj(gcbf,'Tag','yedit');
        z=eval(get(zHandle, 'String'));
        y=eval(get(yHandle, 'String'));
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
    elseif pram==3 | pram==4
        lgtHandle=findobj(gcbf,'Tag','lgtedit');
        Length=eval(get(lgtHandle,'String'));
        AHandle=findobj(gcbf,'Tag','Aedit');
        BHandle=findobj(gcbf,'Tag','Bedit');
        A=eval(get(AHandle, 'String'));
        B=eval(get(BHandle, 'String'));
        gamal=acosh(A); gama=gamal/Length; beta=imag(gamal)/Length; Zc=B/sinh(gamal); 
        lamda = 2*pi/beta;
    elseif pram==5
        CeqHandle=findobj(gcbf,'Tag','Ceqedit');
        Cap=eval(get(CeqHandle,'String'));
        reqHandle=findobj(gcbf,'Tag','reqedit');
        r=eval(get(reqHandle,'String'));
        geqHandle=findobj(gcbf,'Tag','geqedit');
        g=eval(get(geqHandle,'String'));
        LeqHandle=findobj(gcbf,'Tag','Leqedit');
        L=eval(get(LeqHandle,'String'));
        z= r + j*w*L*1E-03;  y = g+j*w*Cap*1E-06;
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
    else, end
    VsmcHandle=findobj(gcbf,'Tag','VscEdit');
    Vsm=eval(get(VsmcHandle,'String'));
    MVAratHandle=findobj(gcbf,'Tag','MVAratEdit');
    MVArat=eval(get(MVAratHandle,'String'));
    pfratHandle=findobj(gcbf,'Tag','pfratEdit');
    pfrat=eval(get(pfratHandle,'String'));
    Vs = Vsm/sqrt(3);
    dist3 = 0:10:lamda/8;
    Vrnl = abs(Vsm./cosh(gama*dist3));
    Vrsil = Vsm./abs(cosh(gama*dist3)+sinh(gama*dist3));
    Vmax = ceil(max(Vrnl/100))*100;
    dismax=  ceil(max(dist3/100))*100*1.1;
    tx = max(dist3);
    ynl = abs(Vsm./cosh(gama*lamda/8));
    ysil= Vsm./abs(cosh(gama*lamda/8)+sinh(gama*lamda/8));
    Is =cosh(gama*lamda/8)*Vs/(Zc*sinh(gama*lamda/8));
    Vshrt = Vs*cosh(gama*dist3)-Zc*Is*sinh(gama*dist3);
    Vshrt= sqrt(3)*abs(Vshrt);
    yshrt= min(Vshrt);
    th = acos(pfrat);
    Srate = MVArat*(cos(th)+j*sin(th));
    Is =conj(Srate)/(3*Vs);
    Vrc = Vs*cosh(gama*dist3) - Zc*Is*sinh(gama*dist3);
    Vrc = sqrt(3)*abs(Vrc);
    yfl = sqrt(3)*abs(Vs*cosh(gama*lamda/8) - Zc*Is*sinh(gama*lamda/8));
    h=figure;
    plot(dist3, Vrnl, dist3, Vrsil, '-', dist3, Vshrt,'-', dist3, Vrc,'-'), grid
    axis([0  dismax  0 Vmax]);
    ylabel('Vr')
    title(['Voltage profile for length up to 1/8 wavelength, Z_c = ',num2str(real(Zc)), ' \Omega'])
    text(tx, ynl, 'No-load')
    text(tx, ysil, 'SIL')
    text(tx, yshrt+25, 'Short-ckt')
    text(tx, yfl, 'Rated load')
    xsc= tx/dismax*.96;
    %text(0.11, 0.05, 'Sending end','sc')
    text(0.11, -80, 'Sending end')
    text(tx, -80, 'Receiving end')
  elseif model==1 | C==0
     text(0.15,1, 'Voltage profile is not obtained for a short line.', 'Color', 'r')
  end
elseif AM==10
     if model~=1 & C~=0
frqHandle=findobj(gcbf,'Tag','frqedit');
    f=eval(get(frqHandle,'String'));w=2*pi*f;
    fprintf(' Loadability curve for line length up to 1/4 wavelength \n')
    fprintf(' ---------------------------------------------------------- \n')
    if pram==1
        rHandle=findobj(gcbf,'Tag','redit');
        r=eval(get(rHandle,'String'));
        LHandle=findobj(gcbf,'Tag','Ledit');
        L=eval(get(LHandle,'String'));
        CapHandle=findobj(gcbf,'Tag','Capedit');
        Cap=eval(get(CapHandle,'String'));
        gHandle=findobj(gcbf,'Tag','gedit');
        g=eval(get(gHandle,'String'));
        z= r + j*w*L*1E-03;  y = g+j*w*Cap*1E-06;
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
     elseif pram==2
        zHandle=findobj(gcbf,'Tag','zedit');
        yHandle=findobj(gcbf,'Tag','yedit');
        z=eval(get(zHandle, 'String'));
        y=eval(get(yHandle, 'String'));
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
    elseif pram==3 | pram==4
        lgtHandle=findobj(gcbf,'Tag','lgtedit');
        Length=eval(get(lgtHandle,'String'));
        AHandle=findobj(gcbf,'Tag','Aedit');
        BHandle=findobj(gcbf,'Tag','Bedit');
        A=eval(get(AHandle, 'String'));
        B=eval(get(BHandle, 'String'));
        gamal=acosh(A); gama=gamal/Length; beta=imag(gamal)/Length; Zc=B/sinh(gamal); 
        lamda = 2*pi/beta;
    elseif pram==5
        CeqHandle=findobj(gcbf,'Tag','Ceqedit');
        Cap=eval(get(CeqHandle,'String'));
        reqHandle=findobj(gcbf,'Tag','reqedit');
        r=eval(get(reqHandle,'String'));
        geqHandle=findobj(gcbf,'Tag','geqedit');
        g=eval(get(geqHandle,'String'));
        LeqHandle=findobj(gcbf,'Tag','Leqedit');
        L=eval(get(LeqHandle,'String'));
        z= r + j*w*L*1E-03;  y = g+j*w*Cap*1E-06;
        Zc = sqrt(z/y); gama = sqrt(z*y); beta = imag(gama);
        lamda = 2*pi/beta;
    else, end
     VsmcHandle=findobj(gcbf,'Tag','VscEdit');
     Vsm=eval(get(VsmcHandle,'String'));
     VrmHandle=findobj(gcbf,'Tag','VrEdit');
     Vrm=eval(get(VrmHandle,'String'));
     VratHandle=findobj(gcbf,'Tag','VratEdit');
     Vrate=eval(get(VratHandle,'String'));
     IthHandle=findobj(gcbf,'Tag','IthEdit');
     Ith=eval(get(IthHandle,'String'));
del=30;
delta = del*pi/180;
Vs = Vsm/sqrt(3);  Vr = Vrm/sqrt(3);
Vrateph = Vrate/sqrt(3);
SIL = Vrate^2/Zc;
SIL=real(SIL);
Vspu = Vsm/Vrate;  Vrpu = Vrm/Vrate;
Kc = Vspu*Vrpu*SIL;
dist1=50:10: lamda/4;
dist2=100:10: lamda/4;
dist3=0:10:lamda/4;
P = Kc*sin(delta)./sin(beta*dist1);
Pmax = Kc./sin(beta*dist2);
mP= P/SIL;
mPmax= Pmax/SIL;
tx = 0.5*lamda/4;
ty1 = Kc*sin(delta)/sin(beta*tx)/SIL;
ty2 = Kc/sin(beta*tx)/SIL;
Pth = sqrt(3)*Vrate*Ith*1E-3;
mPth = Pth/SIL*ones(1, length(dist3));
ty3 = 1.02*Pth/SIL;
h=figure;
plot(dist1, mP, dist2, mPmax,'-', dist3, mPth,'-'), grid
xlabel('Line length');
ylabel('P.U. SIL')
title('Loadability curve for length up to 1/4 wavelength')
text(0.45*tx, .9*mP(1), ['SIL = ',num2str(SIL), 'MW, ',' \delta = ',num2str(del), '\circ'])
text(tx, ty1+.2, ['Practical line loadability'])
text(tx, ty2+.2, 'Theoretical stability limit')
text(tx, ty3+.2, 'Thermal limit')
  elseif model==1 | C==0
     text(0.15,1, 'Loadability curve is not obtained for a short line.', 'Color', 'r')
   end 
else, end
% --------------------------------------------------------------------
function varargout = ShtEdit_Callback(h, eventdata, handles, varargin)
Shthandle=findobj(gcbf,'Tag','ShtEdit');
Sht=get(Shthandle,'Value');
Srihandle=findobj(gcbf,'Tag','SriEdit');
Sri=get(Srihandle,'Value');
ShSrhandle=findobj(gcbf,'Tag','ShSrEdit');
ShSr=get(ShSrhandle,'Value');
CaptextHandle=findobj(gcbf,'Tag','Captext');       

kcEditHandle=findobj(gcbf,'Tag','kcEdit');
set(CaptextHandle, 'visible', 'off')  
set(kcEditHandle, 'visible', 'off') 
if Sht ==1 
    Sri=0; ShSr=0;     
    set(Shthandle, 'Value',  1);  on = (handles.ShtEdit);
    set(Srihandle, 'Value',  0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
elseif Sri ==1 
    Sht=0; ShSr=0;     
    set(Shthandle, 'Value',  0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value',  1);  on = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
elseif ShSr ==1 
    Sht=0; Sri=0;     
    set(Shthandle, 'Value',  0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value',  0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 1);  on = (handles.ShSrEdit);
else, end
    
% --------------------------------------------------------------------
function varargout = SriEdit_Callback(h, eventdata, handles, varargin)
Shthandle=findobj(gcbf,'Tag','ShtEdit');
Sht=get(Shthandle,'Value');
Srihandle=findobj(gcbf,'Tag','SriEdit');
Sri=get(Srihandle,'Value');
ShSrhandle=findobj(gcbf,'Tag','ShSrEdit');
ShSr=get(ShSrhandle,'Value');
CaptextHandle=findobj(gcbf,'Tag','Captext');       

kcEditHandle=findobj(gcbf,'Tag','kcEdit');
set(CaptextHandle, 'visible', 'on')  
set(kcEditHandle, 'visible', 'on')  
if Sri ==1, 
    Sht=0; ShSr=0;     
    set(Shthandle, 'Value', 0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value', 1);  on = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
elseif Sht ==1 
    Sri=0; ShSr=0;     
    set(Shthandle, 'Value',  1);  on = (handles.ShtEdit);
    set(Srihandle, 'Value',  0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
elseif ShSr ==1 
    Sht=0; Sri=0;     
    set(Shthandle, 'Value',  0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value',  0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 1);  on = (handles.ShSrEdit);
else, end
% --------------------------------------------------------------------
function varargout = ShSrEdit_Callback(h, eventdata, handles, varargin)
Shthandle=findobj(gcbf,'Tag','ShtEdit');
Sht=get(Shthandle,'Value');
Srihandle=findobj(gcbf,'Tag','SriEdit');
Sri=get(Srihandle,'Value');
ShSrhandle=findobj(gcbf,'Tag','ShSrEdit');
ShSr=get(ShSrhandle,'Value');
CaptextHandle=findobj(gcbf,'Tag','Captext');     
kcEditHandle=findobj(gcbf,'Tag','kcEdit');
set(CaptextHandle, 'visible', 'on')  
set(kcEditHandle, 'visible', 'on')  
if ShSr ==1, 
    Sht=0; Sri=0;     
    set(Shthandle, 'Value', 0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value', 0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 1);  on = (handles.ShSrEdit);
elseif Sht ==1 
    Sri=0; ShSr=0;     
    set(Shthandle, 'Value',  1);  on = (handles.ShtEdit);
    set(Srihandle, 'Value',  0);  off = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
elseif Sri==1 
    Sht=0; Sri=0;     
    set(Shthandle, 'Value',  0);  off = (handles.ShtEdit);
    set(Srihandle, 'Value',  1);  on = (handles.SriEdit);
    set(ShSrhandle, 'Value', 0);  off = (handles.ShSrEdit);
else end
% --------------------------------------------------------------------
function varargout = pushbuttonInfo_Callback(h, eventdata, handles, varargin)
figure(LinePerfInfo)



% --------------------------------------------------------------------
function varargout = pushbuttonExit_Callback(h, eventdata, handles, varargin)
close all
