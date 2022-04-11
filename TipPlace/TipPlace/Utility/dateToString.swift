//
//  DateToString.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/11.
//

import Foundation

func dateToString(date: Date) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let dateString = dateFormatter.string(from: date)
    return dateString
//  날짜 포맷 변경 가능
}
