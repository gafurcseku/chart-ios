//
//  TableCellName.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import SwiftUI

struct TableCellName: View {
    var nameData:NameData = .init()
    var body: some View {
        HStack(spacing: 3){
            Circle().fill(nameData.color).frame(width: 6,height: 6)
            Text(nameData.title).modifier(TextMedium(fontSize: 12,fontColor: ColorSet.color494949.rawValue))
        }
    }
}

#Preview {
    TableCellName()
}
