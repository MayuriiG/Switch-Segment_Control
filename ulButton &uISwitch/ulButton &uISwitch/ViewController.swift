//
//  ViewController.swift
//  ulButton &uISwitch
//
//  Created by Gajbhiye Mayuri Krushandeo on 17/09/19.
//  Copyright © 2019 Gajbhiye Mayuri Krushandeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var mainSwitch:UISwitch!
    var tubelight1:UISwitch!
    var tubelight2:UISwitch!
    var fan1:UISwitch!
    var fan2:UISwitch!
    var airconditioner:UISwitch!
    var projectorHD:UISwitch!
    var speaker:UISwitch!
    var camera:UISwitch!

    @IBOutlet weak var tagline: UILabel!
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createUI()

        mainSwitch.addTarget(self, action: #selector(onSwitchChange), for: UIControl.Event.valueChanged)
        
        projectorHD.addTarget(self, action: #selector(lightening), for: UIControl.Event.valueChanged)
        
        airconditioner.addTarget(self, action: #selector(airFlow), for: UIControl.Event.valueChanged)
        
        tubelight1.addTarget(self, action: #selector(lightSwitch), for: UIControl.Event.valueChanged)
        tubelight2.addTarget(self, action: #selector(lightSwitch), for: UIControl.Event.valueChanged)
        
         fan1.addTarget(self, action: #selector(fanSwitch), for: UIControl.Event.valueChanged)
         fan2.addTarget(self, action: #selector(fanSwitch), for: UIControl.Event.valueChanged)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    
 //Creation of Switches using Coding Method
    
    func createUI()
    {
        mainSwitch = UISwitch()
        mainSwitch.frame = CGRect(x: 290, y: 160, width: 00, height: 00)
        mainSwitch.onTintColor = UIColor.black        // inside colour
        mainSwitch.tintColor = UIColor.black
        mainSwitch.thumbTintColor = UIColor.red    // circle colour
        view.addSubview(mainSwitch)

        
        tubelight1 = UISwitch()
        tubelight1.frame = CGRect(x: 290, y: 220, width: 00, height: 00)
        tubelight1.onTintColor = UIColor.lightGray
        tubelight1.thumbTintColor = UIColor.red
        view.addSubview(tubelight1)
  
        tubelight2 = UISwitch()
        tubelight2.frame = CGRect(x: 290, y: 280, width: 00, height: 00)
        tubelight2.onTintColor = UIColor.lightGray
        tubelight2.thumbTintColor = UIColor.red
        view.addSubview(tubelight2)
        
        fan1 = UISwitch()
        fan1.frame = CGRect(x: 290, y: 340, width: 00, height: 00)
        fan1.onTintColor = UIColor.lightGray
        fan1.thumbTintColor = UIColor.orange
    
        view.addSubview(fan1)
        
        fan2 = UISwitch()
        fan2.frame = CGRect(x: 290, y: 400, width: 00, height: 00)
        fan2.onTintColor = UIColor.lightGray
        fan2.thumbTintColor = UIColor.orange
        view.addSubview(fan2)
        
        airconditioner = UISwitch()
        airconditioner.frame = CGRect(x: 290, y: 460, width: 00, height: 00)
        airconditioner.onTintColor = UIColor.orange
        view.addSubview(airconditioner)
        
        projectorHD = UISwitch()
        projectorHD.frame = CGRect(x: 290, y: 520, width: 00, height: 00)
        projectorHD.onTintColor = UIColor.red
        view.addSubview(projectorHD)
     
        speaker = UISwitch()
        speaker.frame = CGRect(x: 290, y: 580, width: 00, height: 00)
        speaker.onTintColor = UIColor.orange
        view.addSubview(speaker)
        
        
        camera = UISwitch()
        camera.frame = CGRect(x: 290, y: 640, width: 00, height: 00)
        camera.onTintColor = UIColor.orange
        view.addSubview(camera)
        
    }

// Mainswitch is set "On" then camera "On" along with it 
    
    @objc func onSwitchChange(){
    
        if( mainSwitch.isOn == true)
        {
//        tubelight1.setOn(true, animated: true)
//        tubelight2.setOn(true, animated: true)
//        fan1.setOn(true, animated: true)
//        fan2.setOn(true, animated: true)
//        airconditioner.setOn(true, animated: true)
//        projectorHD.setOn(true, animated: true)
//        speaker.setOn(true, animated: true)
          camera.setOn(true, animated: true)
        
          tagline.text = " Lightening Up Your Life "
       
        }
        else{
          
           tubelight1.setOn(false, animated: true)
           tubelight2.setOn(false, animated: true)
           fan1.setOn(false, animated: true)
           fan2.setOn(false, animated: true)
           airconditioner.setOn(false, animated: true)
           projectorHD.setOn(false, animated: true)
           speaker.setOn(false, animated: true)
           camera.setOn(false, animated: true)
            
           tagline.text = " Power Saving Mode "
        }
     
}
    
 // projectorHD is set "On" then speaker is "ON" & tubelightS  are "Off" simultaneously
    
    @objc func lightening (){
        
      
        if( projectorHD.isOn == true)
        {
           tubelight1.setOn(false, animated: true)
           tubelight2.setOn(false, animated: true)
           speaker.setOn(true, animated: true)
        
                  print(" Projector is On Tubelight's are Off ")
        
        }else{
           tubelight1.setOn(true, animated: true)
           tubelight2.setOn(true, animated: true)
           speaker.setOn(false, animated: true)
          
                  print(" Projector is Off Tubelight's are On ")
      
        }
        
    }
    
// Airconditioner is set "On" then FanS  are "Off" simultaneously
    
    @objc func airFlow (){
        
        
        if( airconditioner.isOn == true)
        {
           fan1.setOn(false, animated: true)
           fan2.setOn(false, animated: true)
            
                  print(" Airconditioner is On Fan's are Off ")
            
        }else{
           fan1.setOn(true, animated: true)
           fan2.setOn(true, animated: true)
            
                  print(" Airconditioner is Off Fan's are On ")
            
        }
        
    }
    
// TubelightS  is set "On" then projectorHD & speaker are "Off" simultaneously
    
    @objc func lightSwitch(){
        
        
        if(tubelight1.isOn == true && tubelight2.isOn == true )
    
          {
            projectorHD.setOn(false, animated: true)
            speaker.setOn(false, animated: true)
            
                 print(" Projector is Off Tubelight's are On ")
   
        }else{
            projectorHD.setOn(false, animated: true)
            speaker.setOn(false, animated: true)
            
                 print(" Projector is On Tubelight's are Off ")
     }
    }
    
// FanS is set "On" then Airconditioner is "Off" simultaneously
    
  
    @objc func fanSwitch(){
        
        if(fan1.isOn == true && fan2.isOn == true   )
       {
            airconditioner.setOn(false, animated: true)
              
                print(" Airconditioner is Off Fan's are On ")
    
        }else{
            airconditioner.setOn(false, animated: true)
      
                print(" Airconditioner is On Fan's are Off ")
        }

}


}
    
    

