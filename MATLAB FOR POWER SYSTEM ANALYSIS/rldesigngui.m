function varargout = rldesigngui(varargin)

global nump denp numh denh
% RLDESIGNGUI Application M-file for Transformer.fig
%    FIG = RLDESIGNGUI launch Transformer GUI.
%    RLDESIGNGUI('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 02-Jun-2002 10:29:25

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

    %%  picture
    %         set(gca,'Position',[0.74 0.48 0.22 .452])
     %   [x,map] = imread('TransPic1','jpg');
     %   image(x)
       %set(gca,'visible','off')

%ax1=axes('Position',[0.525  .585  .4 .225]);
axes(handles.axesBlockDiag)    % Select the proper axes
x1=[0  0.4]; y1=[1 1];
x2=[.8  1.1  1.1  1.7  1.7  1.1  1.1 ];
y2=[ 1  1.0  1.2  1.2  0.8  0.8  1.0];
x3=[1.7 2.0  2.0  2.8  2.8  2.0  2.0];
y3=[1   1.0  1.2  1.2  0.8  0.8  1.0];
x4=[2.8  3.2]; y4=[1  1];
x5=[3.0 3.0  2.0  2.0  1.5  1.5  2.0  2.0];
y5=[1.0 0.2  0.2  0.4  0.4  0    0    0.2];
x6=[1.5  .6  .6];
y6=[.2  .2   .8];
th=0:.005:2*pi;
x=0.6+0.2*cos(th);
y=1.0 +0.2*sin(th);
xa1=[0.34 0.4  0.34]; ya1=[1.02  1.0  0.98];
xa2=[1.04 1.1  1.04]; ya2=[1.02  1.0  0.98];
xa3=[1.94 2.0  1.94]; ya3=[1.02  1.0  0.98];
xa4=[3.14 3.2  3.14]; ya4=[1.02  1.0  0.98];
xa5=[2.06 2.0  2.06]; ya5=[.22  .20  0.18];
xa6=[0.58 0.6  0.62]; ya6=[.74  .8  0.74];


plot(x1, y1,'b', x, y,'b', x2, y2, 'b', x3, y3, 'b', x4, y4, 'b',x5, y5, 'b', x6, y6, 'b',...
   xa1, ya1, 'b', xa2, ya2, 'b',xa3, ya3, 'b',xa4, ya4, 'b',xa5, ya5, 'b',xa6, ya6, 'b')
axis([0, 3.2, 0 1.25])

text(1.25, 1,'G_c(s)', 'color', [0 0  0.6275])
text(1.05, 1.3,'Controller', 'color', [0 0  0.6275])

text(2.2, 1,'G_p(s)', 'color', [0 0  0.6275])
text(2.2, 1.3,'Plant', 'color', [0 0  0.6275])

text(1.65, .2,'H(s)', 'color', [0 0  0.6275])
text(1.5, .5,'Sensor', 'color', [0 0  0.6275])

text(.475, .75,'-','color', [0 0  0.6275])
text(0,  1.15, 'R(s)' , 'color', [0 0  0.6275])
text(2.85, 1.15, 'C(s)' , 'color', [0 0  0.6275])
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

% --------------------------------------------------------------------
function varargout = numpText_Callback(h, eventdata, handles, varargin)
global nump denp numh denh

numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));





% --------------------------------------------------------------------
function varargout = denpText_Callback(h, eventdata, handles, varargin)
global nump denp numh denh

denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));



% --------------------------------------------------------------------
function varargout = numhText_Callback(h, eventdata, handles, varargin)
global nump denp numh denh

numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));



% --------------------------------------------------------------------
function varargout = denhText_Callback(h, eventdata, handles, varargin)
global nump denp numh denh

denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));








% --------------------------------------------------------------------
function varargout = pushbuttonP_Callback(h, eventdata, handles, varargin)
%function [nump, denp, numh, denh, varargout] = pushbuttonP_Callback(h, eventdata, handles, varargin)

global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(PController)



% --------------------------------------------------------------------
function varargout = pushbuttonLag_Callback(h, eventdata, handles, varargin)
global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(LagController)

% --------------------------------------------------------------------
function varargout = pushbuttonLead_Callback(h, eventdata, handles, varargin)
global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(LeadController)




% --------------------------------------------------------------------
function varargout = pushbuttonPD_Callback(h, eventdata, handles, varargin)
global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(PdController)

% --------------------------------------------------------------------
function varargout = pushbuttonPI_Callback(h, eventdata, handles, varargin)
global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(PIController)

% --------------------------------------------------------------------
function varargout = pushbuttonPID_Callback(h, eventdata, handles, varargin)
global nump denp numh denh
numphandle=findobj(gcbf, 'Tag','numpText');
nump=eval(get(numphandle,'String'));
denphandle=findobj(gcbf, 'Tag','denpText');
denp=eval(get(denphandle,'String'));
numhhandle=findobj(gcbf, 'Tag','numhText');
numh=eval(get(numhhandle,'String'));
denhhandle=findobj(gcbf, 'Tag','denhText');
denh=eval(get(denhhandle,'String'));
figure(PIDController)

% --------------------------------------------------------------------
function varargout = pushbuttonInfo_Callback(h, eventdata, handles, varargin)
figure(rldesignInfo)

% --------------------------------------------------------------------
function varargout = pushbuttonExit_Callback(h, eventdata, handles, varargin)
close all

