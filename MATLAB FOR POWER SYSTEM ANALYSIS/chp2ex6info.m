function varargout = chp2ex6Info(varargin)
% CHP2EX6INFO Application M-file for chp2ex1Info.fig
%    FIG = CHP2EX6INFO launch chp2ex1Info GUI.
%    CHP2EX6INFO('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Complex Power Flow'};
str2(1)= {['This example concerns the direction of real and reactive power flow between two sources       '
           'connected by a line of impedance  Z = R + j X  \Omega. For the assumed direction of current   ' 
           'I_{12} = [ | V_1 | \angle \delta_1 - | V_2 |\angle \delta_2 ] / | Z | \angle \gamma           '
           'The complex power S_{12} = P_1 + j Q_1 = V_1 I_{12}^*. Writing all the phasors in polar form, '
           'substituting for I_{12}^* and separating the real and imaginary components results in         '
           '                                                                                              '
           'P_{12} = | V_1|^2 / | Z | cos\gamma - | V_1|  | V_2 | /| Z | cos(\gamma + \delta_1 - \delta_2)'
           'Q_{12} = | V_1|^2 / | Z | sin\gamma - | V_1|  | V_2 | /| Z | sin(\gamma + \delta_1 - \delta_2)'
           'Power system transmission lines have small resistance compared to                             '
           'the reactance.  Assuming R = 0 (i.e., Z = X \angle 90^\circ), the above equations become      ']};
str3(1)= {['    P_{12} = | V_1 | | V_2 | /{ X}  sin(\delta_1 -\delta_2)                                   '
           '    Q_{12} = | V_1 | / {X} [ | V_1| - |V_2| cos( \delta_1 - \delta_2) ]                       ']};
str4(1)= {['From the above results, for a typical power system with small R/X ratio, it can be observed   '
           'that small changes in \delta_1 or \delta_2 will have a significant effect on the real power   '
           'flow, while small changes in voltage magnitudes will not have appreciable effect on the real  ' 
           'power flow. Therefore, the flow of real power on a transmission line is governed mainly by    '
           'the angle difference of the terminal voltages (i.e., P_{12} \propto sin \delta ),             '
           'where \delta = \delta_1 - \delta_2.  If V_1 leads V_2, \delta is positive and the real power  ' 
           'flows from nodes 1 to 2. If V_1 lags V_2, \delta is negative and power flows from nodes 2 to 1'
           'Also, from Q_{12} it can be seen that for small \delta the reactive power flow is determined  '
           'by the magnitude difference of terminal voltages, i.e., Q \propto (| V_2| - | V_1).           ']}; 
str5(1)= {['Sweep \delta_1 with \delta_2 , | V_1| and | V_2|  kept constant and see the effect on the     '
           'direction of real power flow. Also, sweep | V_1| with | V_2|, | \delta_1|, and | \delta_2|    '
           'constant and observe the effect on the direction of the reactive power flow.                  ']};

   
   
   
text(0.2,  1,  str1, 'FontSize', 14, 'color', [0 0 0.502]) 
text(0,  .775, str2, 'FontSize', 10, 'color', [0 0 0.502]) 
text(0,  .535,  str3, 'FontSize', 10, 'color', [1 0 0]) 
text(0,  .315, str4, 'FontSize', 10, 'color', [0 0  0.502]) 
text(0,    0.075, str5, 'FontSize', 10, 'color', [0  .4 0])  
 %text(0.36, -3.55,'\bf\copyright', 'FontSize', 10, 'co6lor',[1 0 0])

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







