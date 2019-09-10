import tkinter
import clipboard
import xml.etree.ElementTree as ele
from tkinter import messagebox
from math import*
from tkinter import Button

xmlString = ""
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
    entry.config(width=window.winfo_width(),height=100)
    entry.grid(row=1, column=1, rowspan=10)

def btn_pressed(value):
    if(value=='1'):
        make_substring()
    elif(value=='2'):
        entry.insert(0.0,clipboard.paste())
        make_substring()
    elif(value=='3'):
        entry.delete(0.0,tkinter.END)

def make_substring():
    xmlString = entry.get(0.0, tkinter.END)
    num = xmlString.find('<')
    try:
        xmlString = xmlString[num:]
        elem = ele.fromstring(xmlString)
        tree = ele.ElementTree(elem)
        tree.write("hi.xml",encoding='utf-8')

    except:
        print("num")
    if (num > 0):
        print("dd")
    else:
        messagebox.showinfo(title="아님!", message="XML 형식이 아님!")
        result["text"] = "비정상"
        result["bg"] = "red"
    #entry.insert(0.0, xmlString)
    return num
window=tkinter.Tk()

window.title("BY. sy")
window.geometry("240x60")
window.resizable(False,False)
submit = tkinter.Button(window,width=30,heigh=5,text="결과 제출",command=lambda :btn_pressed('1'))
psubmit = tkinter.Button(window, width=30, heigh=5, text="붙여널고 결과 제출\n(AutoPaste)", command=lambda: btn_pressed('2'))
result = tkinter.Label(window,width=30, heigh=5,text="여기에\n결과가\n표시됩니다",relief="solid", bd = 3,bg="Yellow")
clear = tkinter.Button(window,width=30,heigh=5,text="초기화",command=lambda :btn_pressed('3'))
entry = tkinter.Text()

#label.pack()
start=tkinter.Button(window,width=30,text="XML 확인하기 \n version (1.0.0) release",  command=lambda:nextPage())
start.place(x = 10, y =10)
window.mainloop()