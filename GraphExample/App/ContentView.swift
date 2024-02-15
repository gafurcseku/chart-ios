//
//  ContentView.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    // State variables
    @State private var nameList: [NameData] = [
        NameData(title: "ショッピング / 日用品・消耗品", color: Color(hex: "1590B7"), revenue: 0.25),
        NameData(title: "医療費 / 健康維持", color: Color(hex: "2B4CC3"), revenue: 0.18),
        NameData(title: "光熱費 / ガス代", color: Color(hex: "7AAE50"), revenue: 0.08),
        NameData(title: "食費 / カフェ", color: Color(hex: "B27135"), revenue: 0.20),
        NameData(title: "娛楽費 / 映画", color: Color(hex: "BF69C0"), revenue: 0.28)
    ]
    @State private var cellData: [CellData] = []
    
    var body: some View {
        VStack {
            // Top charts
//            VStack {
//               
//
//            }
//            .modifier(Padding())
//            .modifier(BgView(colorCode: ColorSet.colorF7F8FA.rawValue))

            // Main content
            VStack(alignment: .leading, spacing: 5) {
                // Section titles
                VStack(alignment: .leading, spacing: 15) {
                    Text("影響している要素")
                        .modifier(TextSemiBold())
                    Text("決済額上位の代表例")
                        .modifier(TextMedium(fontSize: 14, fontColor: ColorSet.color494949.rawValue))
                }

                // Divider
                Divider().background(Color(ColorSet.colorDFDFE0.rawValue))

                // Table cells
                ForEach(0..<cellData.count, id: \.self) { index in
                    TableViewCell(cellData: cellData[index])
                }
                .modifier(PaddingTop(paddingValue: .ten))

                // Detailed breakdown
                Text("細かい決済の内訳")
                    .modifier(TextSemiBold())
                    .padding(.top, 15)
                Divider().background(Color(ColorSet.colorDFDFE0.rawValue))
                HStack(alignment: .center) {
                    DonuntChartView(nameList: $nameList)
                    VStack(alignment: .leading) {
                        ForEach(0..<nameList.count, id: \.self) { index in
                            TableCellName(nameData: nameList[index])
                        }
                    }
                    .padding(.leading, 15)
                }
                .modifier(PaddingTop(paddingValue: .fifteen))
            }
            .modifier(Padding())
            .modifier(BgView(colorCode: ColorSet.colorF7F8FA.rawValue))

            Spacer()
        }
        .padding()
        .modifier(BgView())
        .onAppear(perform: {
            // Fetch data on appear
            self.cellData = CellData.getDataArray()
        })
    }
}

#Preview {
    ContentView()
}
