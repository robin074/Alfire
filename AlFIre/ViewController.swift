//
//  ViewController.swift
//  AlFIre
//
//  Created by Apple MacBook Pro on 1/30/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fetchData()
    }
    func fetchData(){
        
            
            Alamofire.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=56a5b2dcef394b38a12db285dba6de49").responseJSON {
                response in
//              print(response.request)  // original URL request
//              print(response.response) // HTTP URL response
//              print(response.data)     // server data
//              print(response.result)   // result of response serialization

              if let json = response.result.value {
                print("JSON: \(json)")
                // do something with json here
              }
            }
    }

}

