//
//  ViewController.swift
//  duydo
//
//  Created by Nguyenh on 10/28/17.
//  Copyright © 2017 nguyenh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var url: UITextField!
    @IBOutlet var ifid: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var targetPrice: UITextField!
    @IBOutlet weak var tax_type: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let descViewController = segue.destination as! NextViewController
        descViewController.cardNumber = cardNumber.text!
        descViewController.ifid = ifid.text!
        descViewController.targetPrice = targetPrice.text!
        descViewController.taxType = tax_type.text!
        descViewController.url = url.text!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

