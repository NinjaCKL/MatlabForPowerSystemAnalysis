function varargout = Transformer(varargin)
% TRANSFORMER Application M-file for Transformer.fig
%    FIG = TRANSFORMER launch Transformer GUI.
%    TRANSFORMER('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 28-May-2002 09:52:27

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

    %%  picture
             set(gca,'Position',[0.74 0.48 0.22 .452])
        [x,map] = imread('TransPic1','jpg');
        image(x)
       set(gca,'visible','off')
ax1=axes('Position',[0.68  .19  .34  .272]);

x1=[0  1.4  1.4   0   0];
y1=[0   0   1.4  1.4  0];
x2=[0.2  1.2  1.2   0.2   0.2];
y2=[0.2  0.2  1.2  1.2    0.2];
x3=[0.4  1.2  1.2   0.4   0.4];
y3=[0.4  0.4  1.2  1.2    0.4];
x4=[1.4  1.6  1.6   0.2   0.0];
y4=[0.0  0.2  1.6   1.6    1.4];
x5=[0.2  0.4];
y5=[0.2  0.4];
x6=[1.4  1.6];
y6=[1.4  1.6];
plot(x1, y1, 'b')
axis('equal')
axis off
hold on
plot(x2, y2, 'b')
plot(x3, y3, 'b')
plot(x4, y4, 'b')
plot(x5, y5, 'b')
plot(x6, y6, 'b')
%Primary windings
xp1=[-.2  .4]; yp1=[1.1  1.1];
xp2=[-.2  0]; yp2=[.45  .45];
xa=[0    .4]; ya=[1.0  1.0];
plot(xp1, yp1,'r', xa, ya, 'r', xa, ya-.1,'r', xa, ya-.1,'r', xa, ya-.2,'r',...
   xa, ya-.3,'r', xa, ya-.4,'r', xa, ya-.5,'r', xp2, yp2,'r')

x=0:.001:pi;
xc=.4+.025*sin(x); yc=1.075+.025*cos(x);
plot(xc, yc, 'r', xc, yc-.1,'r', xc, yc-.2,'r',xc, yc-.3,'r' , xc, yc-.4, 'r', xc, yc-.5,'r', xc, yc-.6,'r')
x=-pi:.001:0;
xc=.025*sin(x); yc=1.025+.025*cos(x);
plot(xc, yc, 'r', xc, yc-.1,'r', xc, yc-.2,'r',xc, yc-.3,'r' , xc, yc-.4, 'r', xc, yc-.5,'r')

%%Secondary windings
xp1=[1.2  1.8]; yp1=[1  1];
xp2=[1.6  1.8]; yp2=[.55  .55];
xa=[1.2    1.6]; ya=[0.9  0.9];
plot(xp1, yp1,'r', xa, ya, 'r', xa, ya-.1,'r', xa, ya-.1,'r', xa, ya-.2,'r',...
   xa, ya-.3,'r', xp2, yp2, 'r')
x=0:.001:pi;
xc=1.6+.025*sin(x); yc=.925+.025*cos(x);
plot(xc, yc, 'r', xc, yc-.1,'r', xc, yc-.2,'r',xc, yc-.3,'r')
x=-pi:.001:0;
xc=1.2+.025*sin(x); yc=.975+.025*cos(x);
plot(xc, yc, 'r', xc, yc-.1,'r', xc, yc-.2,'r',xc, yc-.3,'r', xc, yc-.4, 'r')

xl=[0    1.4  1.4];
yl=[1.4  1.4   0];
plot(xl+.02, yl+.02, 'b', xl+.04, yl+.04, 'b',xl+.06, yl+.06, 'b', xl+.08, yl+.08, 'b',xl+.1, yl+.1, 'b',...
   xl+.12, yl+.12, 'b', xl+.14, yl+.14, 'b', xl+.16, yl+.16, 'b', xl+.18, yl+.18,'b') 
for a=.02:.02:.2;
xv=[.2+a  .2+a  1.2];
yv=[1.2   .2+a .2+a];
plot(xv, yv)
end

text(-.215, 1.09, '\circ', 'color', [1 0 0])
text(-.215, 0.44, '\circ', 'color', [1 0 0])
text(1.79, .99, '\circ', 'color', [1 0 0])
text(1.79, .54, '\circ', 'color', [1 0 0])

hold off



%t=0.05:pi/50:10*pi;
%plot3(sin(t)/5, cos(t)/5, .2+t/40)
%view(50, 90)


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
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
figure(TransformerTests)

% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
figure(Transformer2wImp)
% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
figure(TransformerEqImp)

% --------------------------------------------------------------------
function varargout = pushbuttonInfo_Callback(h, eventdata, handles, varargin)
figure(TransformerInfo)
% --------------------------------------------------------------------
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
close all
