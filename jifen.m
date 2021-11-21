function varargout = jifen(varargin)
% JIFEN MATLAB code for jifen.fig
%      JIFEN, by itself, creates a new JIFEN or raises the existing
%      singleton*.
%
%      H = JIFEN returns the handle to a new JIFEN or the handle to
%      the existing singleton*.
%
%      JIFEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JIFEN.M with the given input arguments.
%
%      JIFEN('Property','Value',...) creates a new JIFEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jifen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jifen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jifen

% Last Modified by GUIDE v2.5 21-Nov-2021 12:03:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jifen_OpeningFcn, ...
                   'gui_OutputFcn',  @jifen_OutputFcn, ...
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


% --- Executes just before jifen is made visible.
function jifen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jifen (see VARARGIN)

% Choose default command line output for jifen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jifen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = jifen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
str=findobj(gcbf,'Tag','edit1');
x = get(str,'string');
syms x;

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
str=findobj(gcbf,'Tag','edit2');
shortstr = get(str,'string');

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edita1_Callback(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita1 as text
%        str2double(get(hObject,'String')) returns contents of edita1 as a double
a=str2num(get(hObject,'String'));
if isempty(a)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edita1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editb1_Callback(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb1 as text
%        str2double(get(hObject,'String')) returns contents of editb1 as a double
b=str2num(get(hObject,'String'));
if isempty(b)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function editb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
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


% --- Executes on button press in pushbuttonint.
function pushbuttonint_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cevap=findobj(gcbf,'Tag','edit6');
set(cevap,'String','');

str=findobj(gcbf,'Tag','edit2');%获取被积函数
put1= get(str,'string');%将被积函数给变量shortstr

a=str2num(get(handles.edita1,'String'));%获取自变量范围
b=str2num(get(handles.editb1,'String'));

syms x;
%put1=strrep(put1,'x','t');
%a=eval(u);
put1=eval(put1)
class(put1)
%syms t;
if(a<b)
    % syms t;
    syms x;
put=int(put1,x,a,b)
else
   % syms t;
    syms x;
    put=int(put1,x)
end
cevap=findobj(gcbf,'Tag','edit6');
%char t;
out=char(put);
%out=strrep(out,'t','x')
%out=string(out);
set(cevap,'String',out);    


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cevap=findobj(gcbf,'Tag','edit12');
set(cevap,'String','');
str=findobj(gcbf,'Tag','edit2');%获取被积函数
put1 = get(str,'string');%将被积函数给变量shortstr
a2=str2num(get(handles.edita2,'String'))%获取自变量范围
b2=str2num(get(handles.editb2,'String'))
c2=str2num(get(handles.editc2,'String'))
d2=str2num(get(handles.editd2,'String'))

syms x y;
%put1=eval(put1);
str1='@(x,y) ';
put2=strcat(str1,' ',put1);
syms x y;
put2=eval(put2)
%put2=str2num(put2)
class(put2)
out=integral2(put2,a2,b2,c2,d2)
cevap=findobj(gcbf,'Tag','edit12');
out=string(out);
class(out)
%out=string(out);
set(cevap,'String',out);    





function edita2_Callback(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita2 as text
%        str2double(get(hObject,'String')) returns contents of edita2 as a double
a=str2num(get(hObject,'String'));
if isempty(a)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edita2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editb2_Callback(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb2 as text
%        str2double(get(hObject,'String')) returns contents of editb2 as a double
a=str2num(get(hObject,'String'));
if isempty(a)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function editb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editc2_Callback(hObject, eventdata, handles)
% hObject    handle to editc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editc2 as text
%        str2double(get(hObject,'String')) returns contents of editc2 as a double
a=str2num(get(hObject,'String'));
if isempty(a)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function editc2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editd2_Callback(hObject, eventdata, handles)
% hObject    handle to editd2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editd2 as text
%        str2double(get(hObject,'String')) returns contents of editd2 as a double
a=str2num(get(hObject,'String'));
if isempty(a)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function editd2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editd2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
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
close(jifen)
set(Calculator,'Visible','on')
