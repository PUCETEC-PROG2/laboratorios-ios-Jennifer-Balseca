//
//  GithubService.swift
//  GithubClient
//
//  Created by Usuario invitado on 15/7/26.
//

//Para patrones, si se debe usar class, no va a funcionar con struct

import Foundation
import Alamofire

class GithubService{
    static let shared = GithubService() //static significa que se puede llamar a la clase directamente sin tener que instanciar
    private let baseUrl = AppConfig.apiBaseURL
    
    private init (){}
    
    private var headers: HTTPHeaders{
        [
            "Authorization": "Bearer \(AppConfig.apiToken)"
        ]
    }
    
    func getRepositories() async throws -> [Repository] {
        let response = await AF.request(
            "\(baseUrl)/user/repos",
            method: .get,
            parameters: [
                "sort": "created",
                "direction": "desc",
                "per_page": 100,
                "affiliation": "owner"
            ],
            headers: headers
        ).validate(statusCode: 200..<300)
            .serializingDecodable([Repository].self)
            .response
        
        switch response.result {
        case .success(let repositories):
            return repositories
        case .failure(let error):
            print("Error en el servicio de GitHub")
            print(error)
            throw error
        }
    }
}


