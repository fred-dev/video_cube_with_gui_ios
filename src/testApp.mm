#include "testApp.h"
//--------------------------------------------------------------
void testApp::setup(){	
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(0,0,0);
    
	//frameByframe = false;
    
	// Uncomment this to show movies with alpha channels
	// fingerMovie.setPixelFormat(OF_PIXELS_RGBA);
    
	//fingerMovie.loadMovie("movies/fingers.mov");
	//fingerMovie.play();
    //cam.setDistance(100);
    grabber.listDevices();
    grabber.setDeviceID(1);
    grabber.initGrabber(480, 360, OF_PIXELS_RGB);
    bShowHelp = false;
    gui.addToggle("Syphon is on", syphonIsOn);
    gui.addSlider("Easy Cam Distance", camDistance, 0, 5000);
//    gui.addSlider("OrienationX", orientation.x, 0, 360);
//    gui.addSlider("OrienationY", orientation.y, 0, 360);
//    gui.addSlider("OrienationZ", orientation.z, 0, 360);
    
    gui.loadFromXML();
    //gui.show();
    //cam.setDistance(0);
    ofSetVerticalSync(true);}
 //glEnable(GL_DEPTH_TEST);
//--------------------------------------------------------------
void testApp::update(){
    grabber.update();
    
}

//--------------------------------------------------------------
void testApp::draw(){
	//ofBackground(aColor.r * 255, aColor.g * 255.0f, aColor.b * 255.0);
	
	gui.draw();
    glEnable(GL_DEPTH_TEST);
    //glDepthMask(false);
    cam.setScale(1,-1,1);
    
    cam.setDistance(camDistance);
    cam.begin();
    if (cam.getMouseInputEnabled()==false) {
        cam.setOrientation(orientation);
    }
    ofPushMatrix();
    ofTranslate(-grabber.width/2, -grabber.height/2,-grabber.width/2);
    
    ofSetHexColor(0xFFFFFF);
    ofPushMatrix();
    grabber.draw(0,0);
    ofPopMatrix();
    
    ofPushMatrix();
    ofRotateY(270);
    grabber.draw(0,0);
    ofPopMatrix();
    
    ofPushMatrix();
    ofTranslate(0,0,grabber.width);
    grabber.draw(0,0);
    ofPopMatrix();
    
    ofPushMatrix();
    ofTranslate(grabber.width,0,0);
    ofRotateY(270);
    grabber.draw(0,0);
    ofPopMatrix();
    ofPopMatrix();
    cam.end();
}
//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
   
//    if (touch.id == 1){
//		
//		if(!keyboard->isKeyboardShowing()){
//			keyboard->openKeyboard();
//			keyboard->setVisible(true);
//		} else{
//			keyboard->setVisible(false);
//		}
//		
//	}
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

  
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){
    gui.toggleDraw();
}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){
    gui.saveToXML();

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

