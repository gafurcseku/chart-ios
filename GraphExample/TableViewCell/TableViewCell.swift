//
//  TableViewCell.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import SwiftUI

struct TableViewCell: View {
    var cellData:CellData = .init()
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Text(cellData.title)
                    .modifier(TextMedium(fontSize: 16,fontColor: ColorSet.color282828.rawValue))
                HStack{
                    Text(cellData.date)
                        .modifier(TextRegular(fontSize: 12, fontColor: ColorSet.colorA5A5A5.rawValue))
                    HStack(spacing: 4){
                        Circle().fill(Color(cellData.dotColor)).frame(width: 6,height: 6)
                        Text(cellData.subTitle)
                            .modifier(TextRegular(fontSize: 12,fontColor: ColorSet.color696969.rawValue))
                    }
                   
                }
               
            }
            Spacer()
            Text(cellData.amount)
                .modifier(TextRegular(fontSize: 16,fontColor: ColorSet.color282828.rawValue))
        }
    }
}

#Preview {
    TableViewCell()
        .padding()
        .modifier(BgView(colorCode: ColorSet.colorF7F8FA.rawValue))
}
