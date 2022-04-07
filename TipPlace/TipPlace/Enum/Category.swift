//
//  Category.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/07.
//

import Foundation

enum Category: Int {
    case etc = 0
    case economy
    case law
    case safety
    case cook
    case livingAlone
    case cleaning
    case tech
    case driving
    case health
    case campusLife
    case workingLife
    case companionLife
    case hobby
    case relationship
    
    var kr: String {
        switch self {
        case .etc: return "기타"
        case .economy: return "경제"
        case .law: return "법률"
        case .safety: return "안전"
        case .cook: return "요리"
        case .livingAlone: return "자취"
        case .cleaning: return "청소"
        case .tech: return "테크"
        case .driving: return "운전"
        case .health: return "건강"
        case .campusLife: return "대학생활"
        case .workingLife: return "직장생활"
        case .companionLife: return "반려생활"
        case .hobby: return "취미"
        case .relationship: return "인간관계"
        }
    }
}
