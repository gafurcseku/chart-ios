**SwiftUI with Apple Charts Example**

This project demonstrates the integration of Apple's Charts library into a SwiftUI project, while all other UI elements are implemented using SwiftUI components. Additionally, it includes a conversion of a design mockup from Figma, showcasing the seamless incorporation of advanced charting capabilities alongside a beautiful UI design.
**Overview**

This example project combines the power of SwiftUI for building user interfaces with Apple's Charts library for creating sophisticated charts. It also includes a conversion of a design mockup from Figma, demonstrating how to implement the provided design into SwiftUI views.

**Features**
* Integration of Apple's Charts library into SwiftUI views
* Use of SwiftUI for all other user interface elements
* Customizable chart configurations and styling options
* Figma design conversion to SwiftUI

**Figma Design Conversion**

The Figma design mockup has been converted into SwiftUI views and components. Each SwiftUI view corresponds to a specific screen or component of the design.

<img width="315" alt="Screenshot 2024-02-15 at 8 38 02 AM" src="https://github.com/gafurcseku/chart-ios/assets/8382187/965d5786-c292-4aaa-9a2b-da01ca6a7a7f">

Example

Here's a simple example demonstrating the integration of the chart using Apple's Charts library within a SwiftUI view:

```
   var body: some View {
        VStack {
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
```

**Contributions and Feedback**

Contributions to this project are welcome. If you have any suggestions for improvements or encounter any issues, please feel free to open an issue or submit a pull request.
License

This project is licensed under the MIT License - see the **LICENSE** file for details.
