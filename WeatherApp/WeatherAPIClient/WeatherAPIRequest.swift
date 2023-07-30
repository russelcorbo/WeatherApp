//
//  WeatherAPIRequest.swift
//  WeatherApp
//
//  Created by Russel Corbo on 7/29/23.
//

import Foundation

let headers = ["accept": "application/json"]

let request = NSMutableURLRequest(url: NSURL(string: "https://api.tomorrow.io/v4/timelines?location=42.3478%2C%20-71.0466&fields=temperature&apikey=Q99Xulz4YwkNtt93sjsy6aFktXrzIMMT")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)

func fetchRequest(){
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    
    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error as Any)
        } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
        }
    })
    
    dataTask.resume()
}
