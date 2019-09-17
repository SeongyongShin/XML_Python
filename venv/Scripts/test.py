import tkinter
import clipboard
import lxml.etree as etree
import xml.etree.ElementTree as ele
from tkinter import *
import tkinter.ttk
from Scripts import myFile
from xml.etree.ElementTree import Element, dump
from tkinter import messagebox
from math import*

xmlString = ""
msg = ""
def change(): # 텍스트에 입력된 것을 문자열로 바꾸기

    xml=ele.fromstring(entry.get(0.0, tkinter.END))
    entry.delete(0.0, END)
    makeTreeView(xml)

def makeTreeView(root):
    stack_all=0
    stack_iter=0
    iter_length=[]
    parent_list=[]
    tag_list=[]
    stackMax = 0
    for a in root.iter(): # 최대 인덱스 구하기
        stackMax += 1
        if len(list(a)) != 0:
            parent_list.append(a)
        tag_list.append(a)
        iter_length.append(len(list(a)))  # 하위 노드 개수 구하여 리스트에 저장

    for i in root.iter(): # Tab하여 출력
        if(i in tag_list[stack_all-1]):
            stack_iter+=1
        elif i in parent_list and tag_list[stack_all+iter_length[stack_all]] in i:
            stack_iter-=1
        for tabRepeat in range(stack_iter): # Tab
            entry.insert(END, "  ")
        printTreeView(i)
        stack_all+=1

def printTreeView(a):
    if (a.text):
        c = '<{}>\t{}'.format(a.tag, a.text)
    else:
        c = '<{}>'.format(a.tag)
    entry.insert(END, c)
    printAttribute(a)
    entry.insert(END, "\n")

def printAttribute(tag):
    if tag.items():
        for a in tag.items():
            attrib_split=str(a)[str(a).find("'")+1:-2].split(',')
            attrib_format='\t(@{} = {})'.format(attrib_split[0][:-1],attrib_split[1][2:])
            entry.insert(END, attrib_format)

def nextPage():
    start.destroy()
    setWindow()

def setWindow():
    window.geometry("800x800")
    window.resizable(True, True)
    frame1.pack(side="left", fill="both", expand=False)
    frame2.pack(side="right", fill="both", expand=True)
    submit.pack(side = "top",fill = "x")
    psubmit.pack(side = "top", fill = "x")
    result.pack(side = "top", fill = "x")
    clear.pack(side = "top", fill = "x")
    entry.config(yscrollcommand=scrollbar.set) #window.winfo_width()
    entry.pack(side = "top", fill="x")
    scrollbar.pack(side = "right")
    scrollbar.config(command=entry.yview)
    listbox.selection_set(first=0)
    listbox.pack(side = "top", fill = "x")
    entry['yscrollcommand'] = scrollbar.set
def btn_pressed(value):

    if(value=='1'):
        check = True
        try:
            make_substring()
            make_substring()
            change()
        except:
            check = error_xml(check)
    elif(value=='2'):
        check = True
        entry.delete(0.0,tkinter.END)
        entry.insert(0.0,clipboard.paste())
        try:
            make_substring()
            make_substring()
            change()
        except:
            check = error_xml(check)
    elif(value=='3'):
        entry.delete(0.0,tkinter.END)

def make_substring():
    xmlString = entry.get(0.0, tkinter.END)
    num = xmlString.find('<')
    if (num == -1):
        error_xml()
        return;
    root = Element("xml")
    xmlString = xmlString[num:]
    elem = ele.fromstring(xmlString)
    root.append(elem)
    indent(elem, 0)
    tree = ele.ElementTree(elem)
    tree.write("xslt\\hh.xml",encoding="utf-8")
    result["text"] = "정상"
    result["bg"] = "green"
    tree = ele.parse("xslt\\hh.xml")
    entry.delete(0.0, tkinter.END)
    parsedXml = etree.parse("xslt/hh.xml")
    str2 = etree.tostring(parsedXml, pretty_print = True, encoding='utf-8').decode()
    f = open("xslt\\abc.xml",'w',encoding='utf8')
    s = '<?xml version="1.0" encoding="UTF-8"?>\n<?xml-stylesheet type="text/xsl" href="'+myFile.findXslt(listbox.get(listbox.curselection()))+'.xslt"?>\n' + xmlString

    f.write(s)
    f.close()
    entry.insert(0.0, str2)

def indent(elem, level=0):
    i = "\n" + level*"  "
    if len(elem):
        if not elem.text or not elem.text.strip():
            elem.text = i + "  "
        if not elem.tail or not elem.tail.strip():
            elem.tail = i
        for elem in elem:
            indent(elem, level+1)
        if not elem.tail or not elem.tail.strip():
            elem.tail = i
    else:
        if level and (not elem.tail or not elem.tail.strip()):
            elem.tail = i
def error_xml(check):
    result["bg"] = "red"
    result["text"] = "비정상"
    if(check == True):
        messagebox.showinfo(title="아님!", message="XML 형식이 아님!")
        return False
    else:
        return True


window=tkinter.Tk()

window.title("BY. sy")
window.geometry("240x60")
window.resizable(False,False)
frame1=tkinter.Frame(window, relief="solid", bd=2)
frame2=tkinter.Frame(window, relief="solid", bd=2)
submit = tkinter.Button(frame1,width=30,heigh=5,text="결과 제출",command=lambda :btn_pressed('1'))
psubmit = tkinter.Button(frame1, width=30, heigh=5, text="붙여널고 결과 제출\n(AutoPaste)", command=lambda: btn_pressed('2'))
result = tkinter.Label(frame1,width=30, heigh=5,text="여기에\n결과가\n표시됩니다",relief="solid", bd = 3,bg="Yellow")
clear = tkinter.Button(frame1,width=30,heigh=5,text="초기화",command=lambda :btn_pressed('3'))
entry = tkinter.Text(frame2,heigh=100)
listbox = tkinter.Listbox(frame1, selectmode='extended', height=10)
listbox=tkinter.Listbox(frame1,width=30,height=25,font=('times',13))
i=0
for items in myFile.itemList():
    listbox.insert(i,items)
    i +=1
scrollbar=tkinter.Scrollbar(frame2)


start=tkinter.Button(window,width=30,text="XML 확인하기 \n version (1.0.0) release",  command=lambda:nextPage())
start.place(x = 10, y =10)
window.mainloop()