//
//  ViewController.swift
//  LedInternetOfThing
//
//  Created by tran.xuan.diep on 8/28/17.
//  Copyright © 2017 tran.xuan.diep. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var ledSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(ledSegmentedControl.titleForSegment(at: Int(ledSegmentedControl.selectedSegmentIndex)))
    }

    @IBAction func onSegmentedControlClicked(_ sender: Any) {
        let parameters:Parameters = ["led": ledSegmentedControl.titleForSegment(at: Int(ledSegmentedControl.selectedSegmentIndex))!]
        print(Alamofire.request("http://localhost:8080", method: .get, parameters: parameters))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

