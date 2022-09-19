//
//  FilterViewModel.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/09/19.
//

import RxSwift
import RxCocoa

struct FilterViewModel {
    
    // FilterView 외부에서 관찰
    let sortButtonTapped = PublishRelay<Void>()
    
}
