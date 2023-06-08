
import SwiftUI

enum GrassImage: String {
    case grass1 = "GitDollGrass1"
    case grass2 = "GitDollGrass2"
    case grass3 = "GitDollGrass3"
    case grass4 = "GitDollGrass4"
}

struct BarView: View {
    let height: Double
    let width: Double = 10
    let color: Color
    let rotationAngle: Double
    
    var body: some View {
        VStack {
            Spacer()
//            Text("\(height)")
//                .frame(width: 100)
            if height == 110 {
                Image("GitDollGrass4")
                    .resizable()
                    .frame(height: height)
                    .foregroundColor(color)
            } else if  height == 85 {
                Image("GitDollGrass3")
                    .resizable()
                    .frame(height: height)
                    .foregroundColor(color)
            } else if  height == 60 {
                Image("GitDollGrass2")
                    .resizable()
                    .frame(height: height)
                    .foregroundColor(color)
            } else if  height == 35 {
                Image("GitDollGrass1")
                    .resizable()
                    .frame(height: height)
                    .foregroundColor(color)
            } else if  height == 0 {
                EmptyView()
            }
            
            
//                        Image("GitDollGrass1")
//                            .resizable()
//                            .frame(height: height)
//                            .foregroundColor(color)
        }
        .frame(width: width, height: 100)
        //        .background(Color.gray)
        .rotationEffect(Angle(degrees: rotationAngle / Double.pi), anchor: .bottom)
    }
}

struct GrassView: View {
    
    @State private var isRandom: Bool = true // 잔디 랜덤 배열 여부
    
    let bars: [Double] = [100, 75, 50, 25, 0, 100, 75, 50, 25, 0, 100, 75, 50, 25, 0, 100, 75, 50, 25, 0, 100, 75, 50, 25, 0, 100, 75, 50, 25, 0]
    let colors: [Color] = [.red, .blue, .green, .orange, .purple, .red, .blue, .green, .orange, .purple, .red, .blue, .green, .orange, .purple, .red, .blue, .green, .orange, .purple, .red, .blue, .green, .orange, .purple, .red, .blue, .green, .orange, .purple]
    
    var dotPositions: [CGPoint] {
        let circleRadius = CGFloat(100) * 0.97
        let startAngle = Angle(degrees: -90) // 9시 방향
        let endAngle = Angle(degrees: 90) // 3시 방향
        let angleRange = CGFloat(endAngle.radians - startAngle.radians)
        let step = angleRange / CGFloat(bars.count)
        let gap = circleRadius * 2 / CGFloat(bars.count)
        
        return bars.indices.map { index in
            let angle = CGFloat(startAngle.radians) + step * CGFloat(index)
            let x = gap * CGFloat(index) - circleRadius + 10 / 2
            // x = 지름을 기준으로 균등한 간격으로 배치, 위치값 보정
            let y = -sqrt(pow(circleRadius, 2) - pow(x, 2))
            // y = 루트(반지름^2 - x^2) x좌표 기준으로 수직으로 원주에 닿는 거리값 계산, 방향 보정
            return CGPoint(x: x, y: y)
        }
    }
    
    var grassBars: [Double] {
        let modifiedBars = bars.map { $0 > 0 ? $0 + 10 : $0 } // 잔디값 보정
        return isRandom ? modifiedBars.shuffled() : modifiedBars // 랜덤 적용
    } // 잔디값 보정 및 랜덤 적용
    
    var body: some View {
        ForEach(0..<bars.count) { index in
            let rotationAngle = Double.random(in: -15...15)
            BarView(height: grassBars[index], color: colors[index], rotationAngle: rotationAngle)
                .offset(x: dotPositions[index].x, y: dotPositions[index].y)
        }
    }
}

struct GrassView_Previews: PreviewProvider {
    static var previews: some View {
        GrassView()
    }
}
