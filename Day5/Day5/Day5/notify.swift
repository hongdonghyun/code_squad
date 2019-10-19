//
//  notify.swift
//  Day5
//
//  Created by Hongdonghyun on 18/10/2019.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import Foundation

struct NetworkService {
    func getMainMenu() {
        let url = URL(string : "http://public.codesquad.kr/jk/storeapp/main.json")
        URLSession(configuration:URLSessionConfiguration.default).dataTask(with: <#T##URL#>) {
            (data,response,error) in
            var resultJSON = String(data:data!,encoding:String.Encoding.utf8)
            NotificationCenter.default.post(name:NSNotification.Name("updateMainMenu"),object:self,
                                            userInfo:["json"]:resultJSON)
        }resume()
        
    }
}
