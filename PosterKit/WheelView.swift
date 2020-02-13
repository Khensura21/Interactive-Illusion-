import SwiftUI

struct WheelView: View {
    
    // exposed vars
    var wheelSpinAnimation: Bool
    var start: Double
    var end: Double
    
    // template view
    var body: some View {
        Image("illusion")
        .resizable()
        .frame(width: 100, height: 100)
            // var placeholders
        .rotationEffect(wheelSpinAnimation ? .degrees(start) : .degrees(end))
        .animation(Animation.easeInOut(duration: 3.0).repeatCount(10))
    }
}

// important for template views
struct WheelView_Previews: PreviewProvider {
    static var previews: some View {
        // 1-create a group
        Group {
            // create an instance of the struct with placeholder vars
            WheelView(wheelSpinAnimation: false, start: 0, end: 360)
        }.previewLayout(.fixed(width: 110, height: 110))
        // set the width and height of the placeholder
    }
}
