function varargout = AcsrGui(varargin)
% ACSRGUI Application M-file for Transformer.fig
%    FIG = ACSRGUI launch Transformer GUI.
%    ACSRGUI('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 30-May-2002 08:02:43

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

    %  picture
ax4=axes('Position',[0.66  .79  .25  .15]);
[x,map] = imread('ACSR1','jpg');
image(x)
set(gca,'visible','off')
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
function varargout = CodeListbox_Callback(h, eventdata, handles, varargin)

JOREE     = ['2515000      76/19       4.7752        1.8928       0.02600      0.02800           1550'];
THRASHER  = ['2312000      76/19       4.5771        1.8135       0.02770      0.03000           1500'];
KIWI      = ['2167000      72/7        4.4069        1.7374       0.02940      0.03190           1465'];
BLUEBIRD  = ['2156000      84/19       4.4755        1.7920       0.02900      0.03140           1475'];
CHUKAR    = ['1781000      84/19       4.0691        1.6276       0.03410      0.03720           1405'];
FALCON    = ['1590000      54/19       3.9243        1.5847       0.03740      0.04080           1380'];
LAPWING   = ['1590000      54/19       3.8200        1.5150       0.03870      0.04210           1340'];
PARROT    = ['1510500      54/19       3.8252        1.5453       0.03860      0.04280           1340'];
BOBOLINK  = ['1431000      45/7        3.6250        1.4390       0.04260      0.04640           1250'];
PLOVER    = ['1431000      54/19       3.7210        1.5026       0.04077      0.04723           1300'];
MARTIN    = ['1351000      54/19       3.6170        1.4600       0.04319      0.05000           1250'];
PHEASANT  = ['1272000      54/19       3.5103        1.4173       0.04586      0.05290           1200'];
BITTERN   = ['1272000      45/7        3.4160        1.3560       0.04750      0.05190           1100'];
GRACKLE   = ['1192500      54/19       3.3985        1.3716       0.04897      0.05630           1160'];
FINCH     = ['1113000      54/19       3.2842        1.3258       0.05245      0.06020           1110'];
BLUEJAY   = ['1113000      45/7        3.1950        1.2680       0.05380      0.05890           1100'];
CURLEW    = ['1033500      54/7        3.1648        1.2800       0.05650      0.06432           1060'];
ORTOLAN   = ['1033500      45/7        3.0780        1.2220       0.05780      0.06330           1050'];
CARDINAL  = ['954000       54/7        3.0378        1.2283       0.06103      0.07000           1010'];
RAIL      = ['954000       45/7        2.9590        1.1730       0.06240      0.06830           1000'];
CANARY    = ['900000       54/7        2.9515        1.1917       0.06463      0.07365           970 '];
CRANE     = ['874500       54/7        2.9108        1.1765       0.06712      0.07632           950 '];
CONDOR    = ['795000       54/7        2.7762        1.1216       0.07396      0.08564           900 '];
DRAKE     = ['795000       26/7        2.8143        1.1430       0.07272      0.08000           900 '];
MALLARD   = ['795000       30/19       2.8956        1.1978       0.07272      0.08000           910 '];
TERN      = ['795000       45/7        2.7000        1.0730       0.07440      0.08160           900 '];
CROW      = ['715500       54/7        2.6314        1.0637       0.08204      0.09211           830 '];
STARLING  = ['715500       26/7        2.6695        1.0820       0.08142      0.08962           840 '];
REDWING   = ['715500       30/19       2.7457        1.1338       0.08142      0.08962           840 '];
FLAMINGO  = ['666600       54/7        2.5400        1.0272       0.08763      0.09950           800 '];
ROOK      = ['636000       54/7        2.4816        1.0028       0.09198      0.10490           770 '];
GROSBEAK  = ['636000       26/7        2.5146        1.0210       0.09136      0.10055           780 '];
EGRET     = ['636000       30/19       2.5883        1.0698       0.09136      0.10055           780 '];
PEACOCK   = ['605000       54/7        2.4206        0.9784       0.09633      0.11032           750 '];
SQUAB     = ['605000       26/7        2.4536        0.9967       0.09571      0.10690           760 '];
DOVE      = ['556500       26/7        2.3546        0.9540       0.10441      0.11554           730 '];
EAGLE     = ['556500       30/7        2.4206        0.9997       0.10441      0.11554           730 '];
PARAKEET  = ['556500       24/7        2.3220        0.9330       0.10530      0.11560           715 '];
OSPREY    = ['556500       18/1        2.2330        0.8660       0.10520      0.11540           700 '];
HAWK      = ['477000       26/7        2.1793        0.8839       0.12270      0.13480           670 '];
HEN       = ['477000       30/7        2.2428        0.9266       0.12290      0.13490           670 '];
PELICAN   = ['477000       18/1        2.0680        0.8020       0.12240      0.13440           640 '];
IBIS      = ['397500       26/7        1.9888        0.8077       0.14720      0.16170           590 '];
LARK      = ['397500       30/7        2.0472        0.8473       0.14740      0.16190           600 '];
CHICKADEE = ['397500       18/1        1.8872        0.7345       0.14555      0.15985           575 '];
LINNET    = ['336400       26/7        1.8313        0.7437       0.17380      0.19090           530 '];
ORIOLE    = ['336400       30/7        1.8821        0.7772       0.17400      0.19120           530 '];
OSTRICH   = ['300000       26/7        1.7272        0.7010       0.19480      0.21400           490 '];
PIPER     = ['300000       30/7        1.7780        0.7345       0.19510      0.21440           500 '];
PARTRIDGE = ['266800       26/7        1.6307        0.6614       0.21890      0.24050           460 '];
WAXWING   = ['266800       18/1        1.5468        0.6035       0.21678      0.23810           450 '];
MERLIN    = ['336400       18/1        1.6460        0.6740       0.17310      0.19010           460 '];


CodeHandle=findobj(gcbf,'Tag','CodeListbox');
axes(handles.axesSpec)    % Select the proper axes

hrst=gca;
cla(hrst) 
axis off
list_entries = get(handles.CodeListbox,'String');
index_selected = get(handles.CodeListbox,'Value');
    n=length(index_selected);
    if n > 15
    errordlg('You must select no more than 15 codes','Incorrect Selection','modal')
    else
        for k=1:n
            var = list_entries{index_selected(k)};
            if exist(var)
               x=eval(var);
               text(0, 1, 'Code                Al Area       Strand      Diameter     GMR       60 Hz Resistance, \Omega/Km    Ampacity', 'FontWeight', 'bold', 'color', [0  0  0.77])
text(0, .95,  'Name                 CMIL          Al/St          Cm            Cm            25C\circ         50C\circ               A    ', 'FontWeight', 'bold' , 'color', [0  0  0.77]) 
text(0, 0.95-.06*k, var, 'Color', [0 0 0.77])
               text(0.15, .95-.06*k, [ num2str(x)], 'Color', [0  0  0.77]) 
               disp(' ')
                fprintf(' Code     Al Area      Strand      Diameter       GMR          Resistance Ohm/Km           Ampacity \n')
                fprintf(' Name     CMILS        Al/St       cm             cm           60Hz,25C 60HZ,50C           Ampere   \n')
                fprintf(' '),fprintf(var), fprintf('\t'),  fprintf(x'), fprintf('\n')

           else, end
     end
    end 
    
% --------------------------------------------------------------------
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
close 














