function varargout = Sfangcheng(varargin)
% SFANGCHENG MATLAB code for Sfangcheng.fig
%      SFANGCHENG, by itself, creates a new SFANGCHENG or raises the existing
%      singleton*.
%
%      H = SFANGCHENG returns the handle to a new SFANGCHENG or the handle to
%      the existing singleton*.
%
%      SFANGCHENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SFANGCHENG.M with the given input arguments.
%
%      SFANGCHENG('Property','Value',...) creates a new SFANGCHENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Sfangcheng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Sfangcheng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Sfangcheng

% Last Modified by GUIDE v2.5 21-Nov-2021 12:38:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Sfangcheng_OpeningFcn, ...
                   'gui_OutputFcn',  @Sfangcheng_OutputFcn, ...
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


% --- Executes just before Sfangcheng is made visible.
function Sfangcheng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Sfangcheng (see VARARGIN)

% Choose default command line output for Sfangcheng
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Sfangcheng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Sfangcheng_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cevap1=findobj(gcbf,'Tag','edit6');%清空输出文本框
set(cevap1,'String','');
cevap2=findobj(gcbf,'Tag','edit4');
set(cevap2,'String','');

str=findobj(gcbf,'Tag','edit2');
syms x y
put1= get(str,'string')
put1=eval(put1)                    %见Calculator.m
vars=[x,y];                        %定义求解的未知量
[solX,solY]=solve(put1,vars)       %求解put中的vars未知量，分别存储
sol=solve(put1,vars);              %求解put中的vars未知量，以结构体的形式存储到sol中
solX1=sol.x                        %从sol结构体中取出变量x的解
solY1=sol.y                        %从sol结构体中取出变量y的解
solX1=double(solX1)                %转换为double格式
solY1=double(solY1)

solX1=num2str(solX1)               %转化为字符型
solY1=num2str(solY1)
out1=char(solX1)
out2=char(solY1)
set(cevap1,'String',out1);    
set(cevap2,'String',out2);

%S = solve(put1,x)

function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cevap1=findobj(gcbf,'Tag','edit6');
set(cevap1,'String','');
cevap2=findobj(gcbf,'Tag','edit4');
set(cevap2,'String','');

str=findobj(gcbf,'Tag','edit2');
syms x y
put3= get(str,'string')
%put3=eval(put3)

str=findobj(gcbf,'Tag','edit5');
syms x y
put2= get(str,'string')
%put2=eval(put2)

put=strcat('[',put3,',',put2,']')
put=eval(put)
vars=[x,y];                       %定义求解的未知量
[solX,solY]=solve(put,vars)       %求解put中的vars未知量，分别存储
sol=solve(put,vars);              %求解put中的vars未知量，以结构体的形式存储到sol中
solX1=sol.x                       %从sol结构体中取出变量x的解
solY1=sol.y                       %从sol结构体中取出变量y的解
solX1=double(solX1)
solY1=double(solY1)

solX1=num2str(solX1)
solY1=num2str(solY1)
out1=char(solX1)
out2=char(solY1)
set(cevap1,'String',out1);    
set(cevap2,'String',out2);
%S = solve(put1,x)


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%close(Calculator); %想关闭的matlab界面名称——对应gui.m和gui.fig
%set(jifen,'Visible','on'); %想打开的界面名称——gui.m和gui.fig
close(Sfangcheng)
set(Calculator,'Visible','on')
