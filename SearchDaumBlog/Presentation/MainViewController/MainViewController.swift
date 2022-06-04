//
//  MainViewController.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/06/04.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    let disposeBag = DisposeBag()
    
    // let listView
    // let searchBar
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bind() {
        
    }
    
    private func attribute() {
        title = "다음 블로그 검색"
        view.backgroundColor = .white
    }
    
    private func layout() {
        
    }
}
