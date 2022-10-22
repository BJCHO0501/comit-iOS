//
//  HttpClient.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import Foundation
import Alamofire

protocol HTTPClientProvider {
    func get(url : String, params : Parameters?, header : HTTPHeaders) -> DataRequest
    func post(url : String, params : Parameters?, header : HTTPHeaders) -> DataRequest
    func delete(url : String, params : Parameters?, header : HTTPHeaders) -> DataRequest
}

class HTTPClient: HTTPClientProvider {
    
    let baseURL = "https://api.apilayer.com"
    
    func get(url: String, params: Parameters?, header: HTTPHeaders) -> DataRequest {
        return AF.request(baseURL + url,
                          method: .get,
                          parameters: params,
                          encoding: URLEncoding.default,
                          headers: header)
    }
    
    func post(url: String, params: Parameters?, header: HTTPHeaders) -> DataRequest {
        return AF.request(baseURL + url,
                          method: .post,
                          parameters: params,
                          encoding: JSONEncoding.default,
                          headers: header)
    }
    
    func delete(url: String, params: Parameters?, header: HTTPHeaders) -> DataRequest {
        return AF.request(baseURL + url,
                          method: .delete,
                          parameters: params,
                          encoding: JSONEncoding.default,
                          headers: header)
    }
}
