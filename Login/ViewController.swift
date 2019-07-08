//
//  ViewController.swift
//  Login
//
//  Created by Zul Hilmi on 27/05/19.
//  Copyright © 2019 Zul Hilmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pinField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let email : String = emailField.text!
        let pin : String = pinField.text!
        
        if email.isEmpty || pin.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Email/PIN Harus Diisi!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            return;
        }
        
        if (email == "halo@zul.id") && (pin == "123") {
            let alert = UIAlertController(title: "Sukses", message: "Login Berhasil!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Gagal", message: "Email/PIN salah", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
}

