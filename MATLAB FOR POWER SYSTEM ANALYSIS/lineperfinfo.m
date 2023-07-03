function varargout = LinePerfInfo(varargin)


% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Line Performance Program'};

str2(1)= {['This program is developed for the complete analysis and compensation of a transmission line.     '
           '{\bf Step 1} Select the line model:                                                              '
           '     1. Short Line Model: for lines less than 80 Km (50 miles)                                   '
           '     2. Medium Line Model: For lines above 80 Km (50 miles)                                      '
           '        and below 250 Km (150 miles).                                                            '
           '     3. Long Line Model: For lines 250 Km (150 miles) and longer.                                '
           '                                                                                                 '
           '{\bf Step 2} Select types of parameters for input                                                '
           '     1. Parameters r, g, L, and C per unit length. Select this option if the line parameters     '      
           '         per unit length are known. Value of r is the resistance per phsase per unit length      '
           '     2. Complex z, and y per unit length. Select this option if the series impedance             '
           '         and shunt susceptance per unit length are given.                                        '
           '     3. Nominal \pi or Equivalent \pi model. Select this option if the nominal \pi               '
           '         parameters Z and Y or the equivalent \pi parameters Z\prime and Y\primeare known.       '
           '     4. A, B, C, D, constant. Select this option when the generalized ABCD                       '
           '         constants are given.                                                                    '
           '     5. Conductor configuration and size. Use this option if the tower configuration and         '
           '         conductor dimensions are specified. The LCGui program is launched and L and C per       '
           '         unit length are calculated. You must press the EXIT button to close the LCGUI program   '
           '         and import the parameters. Press the Update Transmission constants to continue.         '
           '                                                                                                 '
           '{\bf Step 3} Update transmission constants. Once the line model and the appropriate types of     ' 
           '             parameters for input are selected and the values are inserted press the Update      '
           '             Transmission Constants button to obtain the \pi models, ABCD constants for the      '
           '             selected model and surge impedance with propagation constant for long line model.   '
           '                                                                                                 '
           '{\bf Step 4} Types of Analysis: This Listbox contains 8 options for transmission line performance' 
           '             and compensation. For more information study Chapter 5 and refer to Example 5.9.    ']};





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







