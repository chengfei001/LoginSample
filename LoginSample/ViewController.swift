//
//  ViewController.swift
//  LoginSample
//
//  Created by chengfei on 2017/3/22.
//  Copyright © 2017年 chengfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    
    @IBOutlet weak var bubble3: UIImageView!
    
    @IBOutlet weak var bubble4: UIImageView!
    
    @IBOutlet weak var bubble5: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UIButton!
    //自定义
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.bubble1.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        self.bubble2.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.bubble3.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.bubble4.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.bubble5.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.logo.center.x = self.logo.center.x - self.view.bounds.width
        self.dot.center.x = self.dot.center.x - self.view.bounds.width/2

        
        // adjust place holder text
        let userPaddingView = UIView(frame: CGRect(x:0,y:0,width:40,height:self.username.frame.height)) //CGRectMake(0, 0, 10, username.frame.height))
        username.leftView = userPaddingView
        username.leftViewMode = UITextFieldViewMode.always
        
        
        let passPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: self.password.frame.height))
        password.leftView = passPaddingView
        password.leftViewMode = .always
        
        
        let userImageView = UIImageView(image: UIImage(named: "User"))
        userImageView.frame.origin = CGPoint(x: 13, y: 10)
        self.username.addSubview(userImageView)
        
        self.username.center.x = self.username.center.x - self.view.bounds.width
        
        
        
        
        let passwordImageView = UIImageView(image: UIImage(named: "Key"))
        passwordImageView.frame.origin = CGPoint(x: 12, y: 9)
        self.password.addSubview(passwordImageView)
        self.password.center.x = self.password.center.x - self.view.bounds.width
        
        
        
//        self.bubble1.transform = CGAffineTransform(scaleX: 1, y: 1)
//        self.bubble2.transform = CGAffineTransform(scaleX: 1, y: 1)
//        self.bubble3.transform = CGAffineTransform(scaleX: 1, y: 1)
//        self.bubble4.transform = CGAffineTransform(scaleX: 1, y: 1)
//        self.bubble5.transform = CGAffineTransform(scaleX: 1, y: 1)
//        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginTapper(_ sender: Any) {
        
        
        self.login.addSubview(self.spinner)
        self.spinner.frame.origin = CGPoint(x: 10, y: 12)
        self.spinner.startAnimating();
        
        login.center.x = login.center.x - 30
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.04, initialSpringVelocity: 0, options: [], animations: {
            self.login.center.x = self.login.center.x + 30
        }, completion: nil)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble1.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.bubble2.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {

            self.bubble4.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.bubble5.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.2, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble3.transform = CGAffineTransform(scaleX: 1, y: 1)
          
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.4, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: [], animations: {
            self.logo.center.x = self.logo.center.x + self.view.bounds.width
        }, completion: nil)
        
        
        UIView.animate(withDuration: 5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: [], animations: {
            self.dot.center.x = self.dot.center.x + self.view.bounds.width/2
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.4, delay: 0.5, options: .curveEaseIn, animations: {
            self.username.center.x = self.username.center.x + self.view.bounds.width
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 0.6, options: .curveEaseIn, animations: {
            self.password.center.x = self.password.center.x + self.view.bounds.width
        }, completion: nil)
        
  }
}

