function varargout = rldesignInfo(varargin)

% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Root Locus Design'};

str2(1)= {['This GUI program has been developed for the design of a first-order controller in the forward path  '
           'of a closed-loop control system for proportional, phase-lag, phase-lead, PD, PI, and PID            '
           'controllers. These programs can only be invoked by the GUI program named  "rldesigngui", which has  '
           'the following options:                                                                              '
           '                                                                                                    '
           '{\bf Pushbutton P Controller} - This option is used for the design of gain factor compensation.     ' 
           'K_0 for the specified damping ratio \zeta.                                                          '
           '                                                                                                    '
           '{\bf Pushbutton Phase Lag Controller} - This option is used for the design of a phase-lag controller'
           'using the approximated method, K_c = K_0/K. The controller G_c(s) is designed for a desired damping '
           'ratio \zeta and the gain K required for the steady-state error specification. The user must estimate'
           'the compensator zero.                                                                               '
           '                                                                                                    '
           '{\bf Pushbutton Phase Lead Controller} - This option is used for the design of a phase-lead         '
           ' controller for a desired location of the dominant complex closed loop poles. The DC gain of the    '
           'controller G_c(0) must be specified. G_c(0) = K_c Z_0/P_0 is found from the steady-state error      '
           'requirement.                                                                                        ' 
           '                                                                                                    '
           '{\bf Pushbutton PD Controller} - This option is used for the design of a PD controller for a desired'
           'location of the dominant complex closed loop poles.                                                 ' 
           '                                                                                                    '
           '{\bf Pushbutton PI Controller} - This option is used for the design of a PI controller for a desired'
           'location of the dominant complex closed loop poles.                                                 '
           '                                                                                                    '
           '{\bf Pushbutton PID Controller} - This option is used for the design of a PID controller for a      '
           'desired location of the dominant complex closed loop poles. The integral gain K_I must be specified.' 
           '                                                                                                    '
           'For each case the open loop and the closed-loop compensated system transfer functions are displayed.'
           'Also, the variables:                                                                                ']}; 
str3(1)= {['    {\bf Gc}    Controller transfer fnction                                                         '
           '    {\bf Tfo}   Compensated open-loop transfer function                                             '
           '    {\bf TFc}   Compensated closed-loop transferfunction                                            ']};
 str4(1)={['are sent to the workspace. For each design the pushbutton System responses can be used to obtain    '
           'the time-domain and frequency-domain responses of the compensated system.                           ']}; 
  
text(0.3,  1.05,  str1, 'FontSize', 14, 'color', [0 0 0.502]) 
text(0,  .58, str2, 'FontSize', 10, 'color', [0 0 0.502]) 
text(0,  .097, str3, 'FontSize', 10, 'color', [1  0  0])
text(0,  .01, str4, 'FontSize', 10, 'color', [0 0 0.502]) 
  
 %text(0.36, -3.55,'\bf\copyright', 'FontSize', 10, 'color',[1 0 0])

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

close






