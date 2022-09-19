//
//  SearchNetworkError.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/09/20.
//

import Foundation

enum SearchNetworkError: Error {
    case invalidURL
    case invalidJSON
    case networkError
    
    var message: String {
        switch self {
        case .invalidURL, .invalidJSON:
            return "데이터를 불러올 수 없습니다."
        case .networkError:
            return "네트워크 상태를 확인해주세요."
        }
    }
}
