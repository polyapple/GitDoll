
import SwiftUI


/* Custom용 구조체 */
struct CustomModel: Hashable {
    let title : String
    let deco : [DecoModel]
}

struct DecoModel : Hashable {
    let name : String
    let image : String
}

extension CustomModel{
    static var customItems : [CustomModel] =
    [CustomModel(title: "눈",
                  deco: [
                    DecoModel(name: "없음", image: "NoItem"),
                    DecoModel(name: "정직이", image: "EyesItem1"),
                    DecoModel(name: "초롱이",image: "EyesItem3"),
                    DecoModel(name: "그윽이", image: "EyesItem4"),
                  ]),
      CustomModel(title: "코",
                  deco: [
                    DecoModel(name: "없음", image: "NoItem"),
                    DecoModel(name: "작은 코", image: "NosesItem1"),
                    DecoModel(name: "납작한 코",image: "NosesItem2"),
                    DecoModel(name: "뾰족한 코", image: "NosesItem3"),
                  ]),
     CustomModel(title: "장식",
                 deco: [
                   DecoModel(name: "없음", image: "NoItem"),
                   DecoModel(name: "안경", image: "AccessoriesItem1"),
                   DecoModel(name: "콧수염",image: "AccessoriesItem2"),
                   DecoModel(name: "리본", image: "AccessoriesItem3"),
                 ])
    ]
}
    

/* Setting용 구조체 */
struct SettingModel: Hashable {
    var userName: String
    var dollName: String
    var isRandom: Bool
}

extension SettingModel {
    static var customSettings: [SettingModel] = [
        SettingModel(userName: "깃돌이", dollName: "polyapple", isRandom: true)
    ]
}

