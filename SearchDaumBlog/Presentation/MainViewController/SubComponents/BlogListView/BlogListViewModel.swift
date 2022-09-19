//
//  BlogListViewModel.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/09/19.
//

import RxSwift
import RxCocoa

struct BlogListViewModel {
    
    let filterViewModel = FilterViewModel()
    
    //MainViewController -> BlogListView
    let blogCellData = PublishSubject<[BlogListCellData]>()
    let cellData: Driver<[BlogListCellData]>
    
    init() {
        self.cellData = blogCellData
            .asDriver(onErrorJustReturn: [])
    }
}
