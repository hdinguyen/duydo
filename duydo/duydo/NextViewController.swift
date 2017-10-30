//
//  NextViewController.swift
//  duydo
//
//  Created by Nguyenh on 10/30/17.
//  Copyright © 2017 nguyenh. All rights reserved.
//

import UIKit
import Alamofire
import WebKit

class NextViewController: UIViewController {

    public var url:String = ""
    public var ifid:String = ""
    public var targetPrice:String = ""
    public var taxType:String = ""
    public var cardNumber:String = ""
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        Alamofire.request(url, method: .post, parameters: ["IFID":ifid, "target_price":targetPrice, "card_number":cardNumber, "tax_type":taxType], encoding: URLEncoding.default).responseJSON { (dataResponse) in
            print("\(dataResponse)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
