function varargout = LCinfo(varargin)
% CHP2EX6INFO Application M-file for chp2ex1Info.fig
%    FIG = CHP2EX6INFO launch chp2ex1Info GUI.
%    CHP2EX6INFO('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'new');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Transmission line parameters'};
str2(1)= {['Transmission line inductance and capacitance are due to the effects of magnetic and         '
           'electric fields around the conductor. These parameters are essential for the                '
           'development of the transmission line models used in power system analysis. This             '
           'program evaluates the Geometric Mean Radius GMR, the Geometric Mean Distance                '
           'GMD, inductance and capacitance per phase per km for a three-phase single-circuit           '
           'and a three-phase double-circuit line.                                                      ' 
           '                                                                                            '
           'Modern transmission lines are not transposed. However, for the purpose of modeling          '
           'the line is assumed to be transposed. On this basis of transposition the per phase          '
           'inductance and capacitance are found to be                                                  '
           '                                                                                            '
           '    L = 0.2ln(GMD/GMR_L)            mH/km                                                   '
           '    C=0.0556/ln(GMD/GMR_C)        \muF/km                                                   '
           'For a three-phase single-circuit transmission line                                          '
           '                                                                                            '
           '    GMD = [D_{12}D_{23}D_{13}]^{1/3}                                                        '
           'For single conductor per phase GMR_L = D_s (i.e., GMD of the conductor) and                 '
           'GMR_L = r (conductor radius).                                                               '
           'For bundled conductors of spacing d, these are                                              '
           '                                                                                            '
           'Two conductors per bundle   GMR_L = (D_sd)^{1/2},      GMR_C=(r d)^{1/2}                    '
           'Three conductors per bundle GMR_L = (D_sd^2)^{1/3},    GMR_C=(r d^2)^{1/3}                  ' 
           'Four conductors per bundle  GMR_L = (D_sd^3)^{1/4},    GMR_C=(r d^3)^{1/4}                  '
           '                                                                                            '
           'For double-circuit transmission line GMD, GMR_L, and GMR_C are evaluated in the Power       '
           'System Analysis textbook as given by equations 4.54-4.57.                                   ']};
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







