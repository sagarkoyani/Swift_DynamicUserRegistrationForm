//
//  ViewController.swift
//  Swift_DynamicUserRegistrationForm
//
//  Created by Apple on 21/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrTextFields=[String]()
    var yc:CGFloat!
    var xc:CGFloat!
    var wid:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         yc=80.0
        xc = CGFloat(self.view.frame.width/2)
        wid = CGFloat(self.view.frame.width*0.9)
        
        arrTextFields=["Enter Name","Enter Contact Number","Address","PAN Card Number","Age"]
    ManagedTextField()
        ManageRegisterButton()
   
    }
    func ManagedTextField(){
       
        for i in (0...4){
            print(i)
            
            var myTxt:UITextField    = UITextField(frame: CGRect.init(x:CGFloat(xc - wid/2), y: yc, width: wid, height: 50.0))
            yc=yc+60
            myTxt.textColor=UIColor.red
            myTxt.textAlignment = .center
            myTxt.borderStyle = .roundedRect
        myTxt.autoresizingMask=[.flexibleWidth, .flexibleBottomMargin ,.flexibleHeight]

            myTxt.placeholder=arrTextFields[i]

            self.view.addSubview(myTxt) 
        }
    }
    
    
    func ManageRegisterButton(){
        var btnRegister:UIButton=UIButton.init(frame: CGRect.init(x: wid/2 - wid*0.15/2, y: yc, width: wid*0.3, height: 50))
        btnRegister.setTitle("Register", for: .normal)
        
        btnRegister.titleLabel?.textColor=UIColor.white
        btnRegister.titleLabel?.font=UIFont.boldSystemFont(ofSize: 20)
        btnRegister.backgroundColor=UIColor.green
        btnRegister.isUserInteractionEnabled=true
        btnRegister.isEnabled=true
        
        btnRegister.addTarget(self, action: #selector(Register), for: UIControl.Event.touchUpInside )
        self.view.addSubview(btnRegister)
    }
    
    @objc func Register(){
       print("Regidter Clicked!!")
    }
}
