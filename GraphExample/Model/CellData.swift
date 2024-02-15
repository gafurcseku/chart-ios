//
//  CellData.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import Foundation

public class CellData {
    var title:String
    var subTitle:String
    var amount:String
    var date:String
    var dotColor:String
    
    
    init(title: String = "ゲーム", subTitle: String = "娯楽費", amount: String = "¥32,000", date: String = "2023/12/10", dotColor: String = "BF69C0") {
        self.title = title
        self.subTitle = subTitle
        self.amount = amount
        self.date = date
        self.dotColor = dotColor
    }
}

extension CellData {
     static func getDataArray() -> [CellData] {
        var array:[CellData] = []
        array.append(CellData())
        array.append(CellData(title: "美容院",subTitle: "美容",amount: "¥30,760",date: "2023/12/10",dotColor: "605CEC"))
        return array
    }
}
