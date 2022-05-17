//
//  ViewController.swift
//  API Data
//
//  Created by Bipin Msb on 2022-05-15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getCovidDetails(_ sender: Any) {
        let getApiHelper = Api_Helper(getURL: "https://api.covid19tracker.ca/summary")
        getApiHelper.fetchData { printString in
           print(printString)
        }
    }
    
    @IBAction func getFood(_ sender: Any) {
        let getApiHelper = Api_Helper(getURL: "https://foodish-api.herokuapp.com/api/")
        getApiHelper.fetchData { printString in
           print(printString)
        }
    }

    @IBAction func ageOfAmpires(_ sender: Any) {
        let getApiHelper = Api_Helper(getURL: "https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations")
        getApiHelper.fetchData { printString in
           print(printString)
        }
    }
}

