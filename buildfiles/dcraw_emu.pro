win32:CONFIG(debug,debug|release) {
	LIBS+=-Ldebug/
} else {
	LIBS+=-Lrelease/
}
win32:LIBS+=libraw.lib
unix:LIBS+=-lraw
INCLUDEPATH=../
CONFIG-=qt
win32:CONFIG+=console
SOURCES=../samples/dcraw_emu.cpp
CONFIG+=warn_off
