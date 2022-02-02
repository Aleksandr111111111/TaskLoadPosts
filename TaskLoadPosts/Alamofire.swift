//
//  aamofire.swift
//  TaskLoadPosts
//
//  Created by Aleksander Kulikov on 31.01.2022.
//

import Foundation
import Alamofire

struct Constans {
    let gg = URL(string: "https://raw.githubusercontent.com/aShaforostov/jsons/master/api/main.json")
}

class Network {
    func allFetchPost(completion: @escaping(ModelPosts) -> Void) {
        guard let url = Constans().gg else { return }
        AF.request(url )
            .validate()
            .responseDecodable(of: ModelPosts.self) { response in
                guard let propertyResponse = response.value else {return}
                completion(propertyResponse)
            }
    }
}




