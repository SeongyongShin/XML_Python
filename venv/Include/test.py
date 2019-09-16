import tkinter
import clipboard
import lxml.etree as etree
import xml.etree.ElementTree as ele
from xml.etree.ElementTree import Element, dump
from tkinter import *
from math import*

xmlString = ""
msg = ""
OPTIONS = [
"Jan",
"Feb",
"Mar"
]
def nextPage():
    print("다음 페이지 고")
    start.destroy()
    setWindow()

def setWindow():
    window.geometry("800x800")
    window.resizable(True, True)
    submit.grid(row=1, column=0)
    psubmit.grid(row=2, column=0)
    result.grid(row=3, column=0)
    clear.grid(row=4, column=0)
    entry.config(width=200,height=60,yscrollcommand=scrollbar.set) #window.winfo_width()
    entry.grid(row=0, column=1, rowspan=10)
    select.grid(row=5,column=0)
    scrollbar.grid(row=0, column=2,rowspan=10,sticky="new")
    scrollbar.config(command=entry.yview)
    entry['yscrollcommand'] = scrollbar.set
def btn_pressed(value):
    if(value=='1'):
        make_substring()
    elif(value=='2'):
        entry.delete(0.0,tkinter.END)
        entry.insert(0.0,clipboard.paste())
        make_substring()
    elif(value=='3'):
        entry.delete(0.0,tkinter.END)

def make_substring():
    xmlString = entry.get(0.0, tkinter.END)
    num = xmlString.find('<')
    if (num == -1):
        error_xml()
        return;
    root = Element("xml")
    try:
        xmlString = xmlString[num:]
        elem = ele.fromstring(xmlString)
        root.append(elem)
        indent(elem, 0)
        tree = ele.ElementTree(elem)
        tree.write("hh.xml",encoding="utf-8")
        result["text"] = "정상"
        result["bg"] = "green"
        tree = ele.parse("hh.xml")
        entry.delete(0.0, tkinter.END)
        parsedXml = etree.parse("hh.xml")
        str2 = etree.tostring(parsedXml, pretty_print = True, encoding='utf-8').decode()
        f = open("abc.xml",'w')
        s = "<?xml-stylesheet type='text/xsl' href="+msg+".xslt?>" + xmlString
        f.write(s)
        f.close()
        entry.insert(0.0, str2)
    except:
        error_xml()


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
def error_xml():
    messagebox.showinfo(title="아님!", message="XML 형식이 아님!")
    result["text"] = "비정상"
    result["bg"] = "red"

window=tkinter.Tk()

window.title("BY. sy")
window.geometry("240x60")
window.resizable(False,False)
submit = tkinter.Button(window,width=30,heigh=5,text="결과 제출",command=lambda :btn_pressed('1'))
psubmit = tkinter.Button(window, width=30, heigh=5, text="붙여널고 결과 제출\n(AutoPaste)", command=lambda: btn_pressed('2'))
result = tkinter.Label(window,width=30, heigh=5,text="여기에\n결과가\n표시됩니다",relief="solid", bd = 3,bg="Yellow")
clear = tkinter.Button(window,width=30,heigh=5,text="초기화",command=lambda :btn_pressed('3'))
entry = tkinter.Text()
variable = StringVar(master)
variable.set(OPTIONS[0])
select = tkinter.OptionMenu(window,variable,"1","2,","3")
scrollbar=tkinter.Scrollbar(window)


#label.pack()
start=tkinter.Button(window,width=30,text="XML 확인하기 \n version (1.0.0) release",  command=lambda:nextPage())
start.place(x = 10, y =10)
window.mainloop()