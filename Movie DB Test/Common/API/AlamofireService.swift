//
//  AlamofireService.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireService {

    init(context: ApiContext) {
        self.context = context
    }

    var context: ApiContext

    func getRequest(at route: ApiRoute, params: Parameters = [:]) -> DataRequest {
        return request(at: route, method: .get, params: params, encoding: URLEncoding.default)
    }

    func postRequest(at route: ApiRoute, params: Parameters = [:]) -> DataRequest {
        return request(at: route, method: .post, params: params, encoding: JSONEncoding.default)
    }

    func putRequest(at route: ApiRoute, params: Parameters = [:]) -> DataRequest {
        return request(at: route, method: .put, params: params, encoding: JSONEncoding.default)
    }

    func request(at route: ApiRoute, method: HTTPMethod, params: Parameters = [:], encoding: ParameterEncoding) -> DataRequest {
        let requestUrl = route.url(for: context.environment)
        let paramsWithDefaultData = params.merging(Constants.API.baseParameters) { (_, newValue) -> Any in newValue }
        return AF
            .request(requestUrl, method: method, parameters: paramsWithDefaultData, encoding: encoding)
            .validate()
    }
}
