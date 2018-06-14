# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.8 Form Designer
# Date : 14/06/2018
# Time : 17:16:10

Load "stdlib.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new objectsorderView { win.show() } 
		exec()
	}
}

class objectsorderView from WindowsViewParent
	win = new MainWindow() { 
		move(20,20)
		resize(504,461)
		setWindowTitle("Objects Order")
		setstylesheet("background-color:;") 

		setWindowFlags(Qt_Window | Qt_WindowTitleHint | Qt_WindowStaysOnTopHint | Qt_CustomizeWindowHint) 
		LabelObjects = new label(win) {
			move(13,36)
			resize(58,26)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Objects")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		ListObjects = new listwidget(win) {
			move(84,35)
			resize(280,197)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setcurrentItemChangedEvent("")
			setcurrentRowChangedEvent("")
			setcurrentTextChangedEvent("")
			setitemActivatedEvent("")
			setitemChangedEvent("")
			setitemClickedEvent("")
			setitemDoubleClickedEvent("")
			setitemEnteredEvent("")
			setitemPressedEvent("")
			setitemSelectionChangedEvent("")
			
		}
		btnUp = new pushbutton(win) {
			move(384,36)
			resize(86,35)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Up")
			setClickEvent(Method(:moveup))
			setBtnImage(btnUp,"")
			
		}
		BtnDown = new pushbutton(win) {
			move(386,92)
			resize(86,35)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Down")
			setClickEvent(Method(:movedown))
			setBtnImage(BtnDown,"")
			
		}
		BtnClose = new pushbutton(win) {
			move(384,146)
			resize(86,34)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Close")
			setClickEvent(Method(:Close))
			setBtnImage(BtnClose,"")
			
		}
		Layout1 = new QHBoxLayout() {
			AddWidget(LabelObjects)
			AddWidget(ListObjects)
			
		}
		Layout2 = new QVBoxLayout() {
			AddWidget(btnUp)
			AddWidget(BtnDown)
			AddWidget(BtnClose)
			
		}
		LayoutMain = new QHBoxLayout() {
			AddLayout(Layout1)
			AddLayout(Layout2)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(LayoutMain) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...