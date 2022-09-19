//
//  SearchBarViewModel.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/09/19.
//

import RxSwift
import RxCocoa

// viewModel만 보면 이 View가 어떠한 역할인지 짐작할 수 있다.
struct SearchBarViewModel {
    
    let quertyText = PublishRelay<String?>()
    
    // SearchBar 탭 이벤트
    let searchButtonTapped = PublishRelay<Void>()
    
    // SearchBar 외부로 내보낼 이벤트
    let shouldLoadResult: Observable<String>
    
    init() {
        self.shouldLoadResult = searchButtonTapped
            .withLatestFrom(quertyText) { $1 ?? "" } // nil이면 빈값
            .filter { !$0.isEmpty }
            .distinctUntilChanged()
    }
}
