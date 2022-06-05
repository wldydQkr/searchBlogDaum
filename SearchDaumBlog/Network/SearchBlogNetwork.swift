//
//  SearchBlogNetwork.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/06/06.
//

import RxSwift
import Foundation
import SwiftUI

enum SearchNetworkError: Error {
    case invalidURL
    case invalidJSON
    case networkError
}

class SearchBlogNetwork {
    private let session: URLSession
    let api = SearchBlogAPI()
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func searchBlog(query: String) -> Single<Result<DKBlog, SearchNetworkError>> {
        guard let url = api.searchBlog(query: query).url else { return .just(.failure(.invalidURL)) }
        
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("KakaoAK d668b11148799d67c5dc292ea81b6f93", forHTTPHeaderField: "Authorization")
        
        return session.rx.data(request: request as URLRequest)
            .map { data in
                do {
                    let blogData = try JSONDecoder().decode(DKBlog.self, from: data)
                    return .success(blogData)
                } catch {
                    return .failure(.invalidJSON)
                }
            }
            .catch { _ in
                    .just(.failure(.networkError))
            }
            .asSingle()
    }
}
