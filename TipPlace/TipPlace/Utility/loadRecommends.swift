//
//  loadRecommends.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/12.
//

import Foundation

func loadRecommends(category: Category) -> [Author] {
    let recommended: [Author]
    recommended = ListMock.authors.filter({$0.speficalDomain?.contains(category) == true})
    return recommended
}
