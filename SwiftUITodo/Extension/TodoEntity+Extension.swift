//
//  TodoEntity+Extension.swift
//  SwiftUITodo
//
//  Created by 遠藤聖也 on 2021/05/27.
//

import CoreData
import SwiftUI

extension TodoEntity {
    enum Category: Int16 {
        case ImpUrg_1st     // Important & Urgent (第Ⅰ領域）
        case ImpNUrg_2nd    // Important & Not Urgent (第Ⅱ領域）
        case NImpUrg_3rd    // Not Important & Urgent（第Ⅲ領域）
        case NImpNUrg_4th   // Not Important & Not Urgent（第Ⅳ領域）
        
        func toString() -> String {
            switch self {
            case .ImpUrg_1st:
                return "重要かつ緊急"
            case .ImpNUrg_2nd:
                return "重要だが緊急ではない"
            case .NImpUrg_3rd:
                return "重要でないが緊急"
            case .NImpNUrg_4th:
                return "重要でも緊急でもない"
            }
        }
        func image() -> String {
            switch self {
            case .ImpUrg_1st:
                return "flame"
            case .ImpNUrg_2nd:
                return "tortoise.fill"
            case .NImpUrg_3rd:
                return "alarm"
            case .NImpNUrg_4th:
                return "tv.music.note"
            }
        }
        func color() -> Color {
            switch self {
            case .ImpUrg_1st:
                return .tRed
            case .ImpNUrg_2nd:
                return .tBlue
            case .NImpUrg_3rd:
                return .tGreen
            case .NImpNUrg_4th:
                return .tYellow
            }
        }
    }
    
    enum State: Int16 {
        case todo
        case done
    }
}
