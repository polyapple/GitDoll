
import SwiftUI


struct CustomModel: Hashable {
    let title : String
    let item : [ItemModel]
}

struct ItemModel : Hashable {
    let name : String
    let image : String
}

extension CustomModel{
    static var customItems : [CustomModel] =
    [CustomModel(title: "눈",
                  item: [
                    ItemModel(name: "없음", image: "NoItem"),
                    ItemModel(name: "정직이", image: "EyesItem1"),
                    ItemModel(name: "초롱이",image: "EyesItem3"),
                    ItemModel(name: "그윽이", image: "EyesItem4"),
                  ]),
      CustomModel(title: "코",
                  item: [
                    ItemModel(name: "없음", image: "NoItem"),
                    ItemModel(name: "작은 코", image: "NosesItem1"),
                    ItemModel(name: "납작한 코",image: "NosesItem2"),
                    ItemModel(name: "뾰족한 코", image: "NosesItem3"),
                  ]),
     CustomModel(title: "장식",
                 item: [
                   ItemModel(name: "없음", image: "NoItem"),
                   ItemModel(name: "안경", image: "AccessoriesItem1"),
                   ItemModel(name: "콧수염",image: "AccessoriesItem2"),
                   ItemModel(name: "리본", image: "AccessoriesItem3"),
                 ])
    ]
}
