#include "ofMain.h"
#include "testApp.h"

int main(){
	ofAppiPhoneWindow * iOSWindow = new ofAppiPhoneWindow();
    iOSWindow->enableDepthBuffer();
    ofSetupOpenGL(iOSWindow, 480, 320, OF_FULLSCREEN);  		// <-------- setup the GL context

	ofRunApp(new testApp);
}
