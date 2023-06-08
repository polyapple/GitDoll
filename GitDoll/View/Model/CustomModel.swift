
import SwiftUI

struct CustomModel: Hashable {
    var title : String
    var item : [ItemModel]
}

struct ItemModel : Hashable {
    var name : String
    var image : String
}

extension CustomModel{
    static var customModels : [CustomModel] =
    [CustomModel(title: "눈",
                  item: [
                    ItemModel(name: "None", image: "NoItem"),
                    ItemModel(name: "정직한 눈", image: "EyesItem1"),
                    ItemModel(name: "빛나는 눈",image: "EyesItem3"),
                    ItemModel(name: "그윽한 눈", image: "EyesItem4"),
                  ]),
      CustomModel(title: "코",
                  item: [
                    ItemModel(name: "None", image: "NoItem"),
                    ItemModel(name: "납작한 코", image: "NosesItem1"),
                    ItemModel(name: "작은 코",image: "NosesItem2"),
                    ItemModel(name: "뾰족한 코", image: "NosesItem3"),
                  ]),
     CustomModel(title: "악세사리",
                 item: [
                   ItemModel(name: "None", image: "NoItem"),
                   ItemModel(name: "안경", image: "AccessoriesItem1"),
                   ItemModel(name: "콧수염",image: "AccessoriesItem2"),
                   ItemModel(name: "리본", image: "AccessoriesItem3"),
                 ])
    ]
}
