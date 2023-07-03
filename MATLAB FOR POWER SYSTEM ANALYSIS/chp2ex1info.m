function varargout = chp2ex1Info(varargin)
% CHP2EX1INFO Application M-file for chp2ex1Info.fig
%    FIG = CHP2EX1INFO launch chp2ex1Info GUI.
%    CHP2EX1INFO('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 29-Mar-2002 21:32:05

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

axes(handles.axesInfo)    % Select the proper axes
axis off
str1(1) = {'\bf Real and Reactive Power'};
str2(1)={['The instantaneous voltage v(t) = V_m cos(\omegat + \theta_v) applied to a load    '
          '|Z|\angle \theta results in the instantaneous current given by                    '  
          'i(t) =  I_m cos (\omega t + \theta_i). The instantaneous power p(t) delivered to  '
          'the load is the product of voltage v(t) and current i(t) given by                 '
          '                                                                                  '
          '     p(t) = v(t) i(t) = V_m I_m cos(\omega t + \theta_v)cos(\omega t + \theta_i)  '
          'With the help of trigonometric identity, the instantaneous power p(t) is resolved '
          'into two components. The first component is                                       '
          '                                                                                  '
          '      p_R(t) = | V | | I | cos\theta [ 1 + cos2(\omega t + \theta_v) ]            '
          'and the second component is                                                       '                                              
          '                                                                                  '
          '      p_X (t) = | V | | I | sin\theta sin2(\omega t + \theta_v)                   '
          'where V and I are the rms values of the voltage and current and                   '
          '\theta = (\theta_v - \theta_i) is the angle between voltage and current, or the   '
          'impedance angle. \theta is positive if the load is inductive, (i.e., current is   '
          'lagging the voltage) and \theta is negative if the load is capacitive (i.e.,      '
          'current is leading the voltage). The average value of p_R(t) is                   ']};
str3(1)= {'     P = | V | | I | cos\theta   W                                                '};
str4(1)={['This is the power absorbed by the resistive component of the load and is also     '                                                                                 
          'referred to as the active power or real power. p_x(t) which has a frequency twice '
          'that of the source accounts for power oscillating into and out of the load beacuse'
          'of the reactive element (inductive or capacitive). The amplitude of this pulsating'
          'power is called reactive power and is designated by Q.                            ']};
str5(1)= {'     Q = | V |  | I | sin \theta  var                                             '};    
str6(1)={['In inductive load, current lags the voltage, \theta = (\theta_v - \theta_i) > 0   '
          'and Q is positive; whereas, for capacitive load, current is leading the voltage,  '         
          '\theta  = (\theta_v - \theta_i) < 0 and Q is negative.                            ']};
str7(1)={['Run this example for positive, zero, and negative values of \theta and see its    '
          'effect on the p_x(t) plot and the sign of Q.                                      ']};
        
  
  
text(0.2, 1,  str1, 'FontSize', 14, 'color', [0 0 0.502]) 
text(0,  .675, str2, 'FontSize', 10, 'color', [0 0 0.502]) 
text(0,  .37, str3, 'FontSize', 10, 'color', [1 0 0]) 
text(0,   .265, str4, 'FontSize', 10, 'color', [0 0 00.502]) 
text(0,  .175, str5, 'FontSize', 10, 'color', [1 0 0]) 
text(0,   .1, str6, 'FontSize', 10, 'color', [0 0 0.502])  
text(0,    0, str7, 'FontSize', 10, 'color', [0  .4 0])  
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







