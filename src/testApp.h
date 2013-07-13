#pragma once

#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"
#include "ofxSimpleGuiToo.h"
#define MAX_N_PTS         1500
class testApp : public ofxiPhoneApp{
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
     ofxiPhoneKeyboard * keyboard;
   
    
    bool bDrawnAnything;
    void drawInteractionArea();
    ofVideoGrabber      grabber;
    ofEasyCam cam; // add mouse controls for camera movement
    bool bShowHelp;

    ofVec3f orientation;
    
    
    int clientWidth;
    int clientHeight;
    float camDistance;
    bool syphonIsOn;

};


