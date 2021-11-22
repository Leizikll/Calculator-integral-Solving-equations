function varargout = Calculator(varargin)
% CALCULATOR MATLAB code for Calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculator

% Last Modified by GUIDE v2.5 21-Nov-2021 12:37:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Calculator is made visible.
function Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculator (see VARARGIN)

% Choose default command line output for Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);

handles.memoryBuff=0; % defining global variable
handles.valuedeger=1; % defining global variable
guidata(hObject,handles); % my allows to update global variables

% --- Outputs from this function are returned to the command line.
function varargout = Calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in buttonSUB.
function buttonSUB_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '-'];
set(str,'String',out);

% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '4'];
set(str,'String',out);

% --- Executes on button press in button5.
function button5_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '5'];
set(str,'String',out);

% --- Executes on button press in button6.
function button6_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '6'];
set(str,'String',out);

% --- Executes on button press in buttonADD.
function buttonADD_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '+'];
set(str,'String',out);

% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1'); % defining first screen 
                              %(that tag name is out1) as str
put = get(str,'string'); % gets value from str
out = [put '1']; % pre. value + "1"
set(str,'String',out); % writes "1" on screen

% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '2'];
set(str,'String',out);

% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '3'];
set(str,'String',out);

% --- Executes on button press in buttonEQU.
function buttonEQU_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put=get(str,'String');
cevap=findobj(gcbf,'Tag','out2');
put=str2num(put);
set(cevap,'String',put);

% --- Executes on button press in buttonClr.
function buttonClr_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1'); % defining calc. screen 
put = get(str,'string');  % getting value from first screen         
set(str,'String','');

out2=findobj(gcbf,'Tag','out2');
set(out2,'String','');

% --- Executes on button press in buttonANS.
function buttonANS_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
out2=findobj(gcbf,'Tag','out2');
bilgi2 = get(out2,'string');
set(str,'string',bilgi2);
set(out2,'string',' ')

% --- Executes on button press in buttonDEL.
function buttonDEL_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
set(str,'String',' ');
out2=findobj(gcbf,'Tag','out2');
set(out2,'string',' ');

% --- Executes on button press in buttonDIV.
function buttonDIV_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '/'];
set(str,'String',out);

% --- Executes on button press in button7.
function button7_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '7'];
set(str,'String',out);

% --- Executes on button press in button8.
function button8_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '8'];
set(str,'String',out);

% --- Executes on button press in button9.
function button9_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '9'];
set(str,'String',out);

% --- Executes on button press in buttonMUL.
function buttonMUL_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '*'];
set(str,'String',out);

function out1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function out1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function out2_Callback(hObject, eventdata, handles)

function out2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in buttonP.
function buttonP_Callback(hObject, eventdata, handles)

if handles.valuedeger==1
    str=findobj(gcbf,'Tag','out1')
    out=get(str, 'string')
    put=[out '(']
    set(str,'string',put)
    handles.valuedeger=0
    guidata(hObject,handles);
elseif handles.valuedeger==0 % updates valuedeger
    str=findobj(gcbf,'Tag','out1')
    out=get(str, 'string')
    put=[out ')']
    set(str,'string',put)
    handles.valuedeger=1
    guidata(hObject,handles); % updates valuedeger
end

% --- Executes on button press in button0.
function button0_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '0'];
set(str,'String',out);

% --- Executes on button press in buttonPOINT.
function buttonPOINT_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '.'];
set(str,'String',out);

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '^(-1)'];
set(str,'String',out);

% --- Executes on button press in buttonDE.
function buttonDE_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
put(end)='';
out = put;
set(str,'String',out);

% --- Executes on button press in buttonSQRT.
function buttonSQRT_Callback(hObject, eventdata, handles)

str=findobj(gcbf,'Tag','out1');
put = get(str,'string');
out = [put '^(1/2)'];
set(str,'String',out);

% --- Executes on button press in buttonPERCENT.
function buttonPERCENT_Callback(hObject, eventdata, handles)

    str=findobj(gcbf,'Tag','out1');
    put = get(str,'string');
    out = [put '/100'];
    set(str,'String',out);


% --- Executes on button press in buttonexp.
function buttonexp_Callback(hObject, eventdata, handles)
% hObject    handle to buttonexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    str=findobj(gcbf,'Tag','out1');
    put = get(str,'string');
    out = [put 'exp'];
    set(str,'String',out);

% --- Executes on button press in buttonsin.
function buttonsin_Callback(hObject, eventdata, handles)
% hObject    handle to buttonsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    str=findobj(gcbf,'Tag','out1');
    put = get(str,'string');
    out = [put 'sin'];
    set(str,'String',out);
    
% --- Executes on button press in buttoncos.
function buttoncos_Callback(hObject, eventdata, handles)
% hObject    handle to buttoncos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    str=findobj(gcbf,'Tag','out1');
    put = get(str,'string');
    out = [put 'cos'];
    set(str,'String',out);

% --- Executes on button press in buttontan.
function buttontan_Callback(hObject, eventdata, handles)
% hObject    handle to buttontan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    str=findobj(gcbf,'Tag','out1');
    put = get(str,'string');
    out = [put 'tan'];
    set(str,'String',out);


% --- Executes on button press in buttonjifen.
function buttonjifen_Callback(hObject, eventdata, handles)
% hObject    handle to buttonjifen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Calculator); %想关闭的matlab界面名称——对应gui.m和gui.fig
set(jifen,'Visible','on'); %想打开的界面名称——gui.m和gui.fig


% --- Executes on button press in buttonweifen.
function buttonweifen_Callback(hObject, eventdata, handles)
% hObject    handle to buttonweifen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Calculator); %想关闭的matlab界面名称——对应gui.m和gui.fig
set(Sfangcheng,'Visible','on'); %想打开的界面名称——gui.m和gui.fig
