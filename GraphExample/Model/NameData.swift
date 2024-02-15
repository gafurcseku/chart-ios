//
//  NameData.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import Foundation
import SwiftUI

class NameData : Identifiable{
    let id: UUID
    var title: String
    var color: Color
    var revenue: Double
    init(id:UUID = UUID(),title: String = "娛楽費 / 映画", color: Color = .pink,revenue: Double = 0.6) {
        self.id = id
        self.title = title
        self.color = color
        self.revenue = revenue
    }
}

