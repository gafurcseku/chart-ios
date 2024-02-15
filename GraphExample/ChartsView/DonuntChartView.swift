//
//  DonuntChartView.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import Foundation
import SwiftUI
import Charts

struct DonuntChartView: View {
    @Binding var nameList:[NameData]
    var body: some View {
        Chart(nameList){ names in
            SectorMark(
                angle: .value(Text(names.title), names.revenue),
                innerRadius: .ratio(0.7)
            )
            .foregroundStyle(names.color)
            .annotation(position:.overlay){
                Text("\(Int(names.revenue * 100))%")
                    .modifier(TextRegular(fontSize: 12,fontColor: ColorSet.color494949.rawValue))
            }
        }
        .frame(maxWidth: 100, maxHeight: 100)
    }
}
