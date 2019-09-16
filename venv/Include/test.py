import tkinter
import clipboard
import lxml.etree as etree
import xml.etree.ElementTree as ele
from Include import myFile
from xml.etree.ElementTree import Element, dump
from tkinter import messagebox
from math import*

xmlString = ""
msg = ""
itemsforlistbox=['[건보]자격득실확인서','[건보]납부확인서','[건보]완납확인서','![건보]건강검진이력','![건보]진료이력','![건보]자격확인서']
def nextPage():
    print("다음 페이지 고")
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
    #label.pack(side = "top", fill="x")
    #select.pack(side = "top", fill = "x")
    scrollbar.pack(side = "right")
    scrollbar.config(command=entry.yview)
    listbox.pack(side = "top", fill = "x")
    entry['yscrollcommand'] = scrollbar.set
def btn_pressed(value):
    if(value=='1'):
        try:
            make_substring()
            make_substring()
        except:
            error_xml()
    elif(value=='2'):
        entry.delete(0.0,tkinter.END)
        entry.insert(0.0,clipboard.paste())
        try:
            make_substring()
            make_substring()
        except:
            error_xml()
    elif(value=='3'):
        entry.delete(0.0,tkinter.END)

def make_substring():
    xmlString = entry.get(0.0, tkinter.END)
    num = xmlString.find('<')
    if (num == -1):
        error_xml()
        return;
    root = Element("xml")
    # try:
    #msg = "xslt_nhis_ja"
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
    f = open("abc.xml",'w',encoding='utf8')
    s = '<?xml version="1.0" encoding="UTF-8"?>\n<?xml-stylesheet type="text/xsl" href="'+myFile.findXslt(listbox.get(listbox.curselection()))+'.xslt"?>\n' + xmlString

    f.write(s)
    f.close()
    entry.insert(0.0, str2)
    # except:
    #     error_xml()


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
frame1=tkinter.Frame(window, relief="solid", bd=2)
frame2=tkinter.Frame(window, relief="solid", bd=2)
submit = tkinter.Button(frame1,width=30,heigh=5,text="결과 제출",command=lambda :btn_pressed('1'))
psubmit = tkinter.Button(frame1, width=30, heigh=5, text="붙여널고 결과 제출\n(AutoPaste)", command=lambda: btn_pressed('2'))
result = tkinter.Label(frame1,width=30, heigh=5,text="여기에\n결과가\n표시됩니다",relief="solid", bd = 3,bg="Yellow")
clear = tkinter.Button(frame1,width=30,heigh=5,text="초기화",command=lambda :btn_pressed('3'))
entry = tkinter.Text(frame2,heigh=50)
listbox = tkinter.Listbox(frame1, selectmode='extended', height=10)
listbox=tkinter.Listbox(frame1,width=30,height=10,font=('times',13))
i=0
for items in itemsforlistbox:
    listbox.insert(0,items)
    i = i+1
scrollbar=tkinter.Scrollbar(frame2)


#label.pack()
start=tkinter.Button(window,width=30,text="XML 확인하기 \n version (1.0.0) release",  command=lambda:nextPage())
start.place(x = 10, y =10)
window.mainloop()