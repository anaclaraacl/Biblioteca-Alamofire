//
//  DogService.swift
//  ManagerDependencyAlamonfire
//
//  Created by COTEMIG on 07/10/24.
//

import Alamofire
import Foundation

class DogService {
    
    let baseURL = "https://dog.ceo/api/breeds/image/random"
    
    func fetch(callback: @escaping (DogModel?) -> Void){
        AF.request(baseURL).responseDecodable(of: DogModel.self){
            response in guard let dog = response.value else {
                callback(nil)
                return
            }
            callback(dog)
        }
    }
}
