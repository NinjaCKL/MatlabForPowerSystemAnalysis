function varargout = TransformerInfo(varargin)

% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Transformer Program'};

str2(1)= {['This GUI program obtains the transformer equivalent circuit from open-circuit and short-circuit    '
           'tests. It also finds the transformer performance characteristics using the transformer parameters. ' 
           '{\bf Pushbutton Transformer Tests and Performance:}  Displays the open circuit and short circuit   '
           'enabling the user to enter the no-load test and the short circuit test data. When the pushbutton   '
           '"Obtain Equivalent Circuits" is pressed, The equivalent circuits referred to primary and referred  '
           'to secondary are obtained. The load specifications can now be entered and when the                 '
           '"Pushbutton Transformer Performance" is pressed the transformer performance characteristics        '
           'including an efficiency curve from 25 to 125 percent of full-load is obtained.                     '
           '                                                                                                   '
           '{\bf Pushbutton Performance (Z_1, Z_2, R_c, X_m):} Displays the transformer 2-winding circuit      '
           'enabling the user to enter the individual winding impedances and the shunt branch.                 '
           'The equivalent circuit and transformer performance are obtained as before.                         '
           '                                                                                                   '
           '{\bf Pushbutton (Z_{eq}, R_c, X_m)} can be used when the parameters of the equivalent circuit is   '
           'known. After entering the parameters of the equivalent circuit press "Pushbutton Equivalent        '
           'Circuits", the equivalent circuits referred to LV-side and HV-side are displayed.                  '
           'Transformer performance is obtainedas before.                                                      '
           '                                                                                                   '
           'This program can be used for the analysis of the three-phase transformer provided the parameters   '  
           'of one phase of an equivalent Y-Y are specified. When specifying the individual windings           '
           'impedances for the \Delta-side, obtain the per-phase Y-equivalent impedance. For turns ratio       '
           'specify the ratio of phase to phase voltages, and for load the per phase value of the load KVA.    '
           '                                                                                                   '
           'For further information and the necessary equations for determining the parameters of the          '
           'equivalent circuit, efficiency and voltage regulation refer to Sections 3.6-3.9 of the textbook    '
           'Power System Analysis.                                                                             ']};

text(0.2,  1,  str1, 'FontSize', 14, 'color', [0 0 0.502]) 
text(0,  .5, str2, 'FontSize', 10, 'color', [0 0 0.502]) 

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






