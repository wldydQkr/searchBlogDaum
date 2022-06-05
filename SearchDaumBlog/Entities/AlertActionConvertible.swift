//
//  AlertActionConvertible.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/06/05.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
