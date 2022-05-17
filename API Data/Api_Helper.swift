//
//  CovidDetails_Helper.swift
//  API Data
//
//  Created by Bipin Msb on 2022-05-15.
//

import Foundation

class Api_Helper{
    private var endpoint = URL(string: "")
    
    private var session: URLSession = {
        var config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    init(getURL: String) {
        endpoint = URL(string: getURL)
    }
    
    func fetchData(callback: @escaping (Any) -> Void){
        let request = URLRequest(url: endpoint!)
        let task = session.dataTask(with: request) {
         data, response, error in
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data, options: [])
                    callback(jsonData)
                }catch let error{
                    print("Error \(error)")
                }
            } else if let error = error {
                print(error)
            } else {
                print("Unknown Error")
            }
        }
        task.resume()
    }
}
