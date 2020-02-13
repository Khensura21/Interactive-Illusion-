import SwiftUI

struct ContentView: View {
    
    // State variables for toggling animation.
    @State var wheelSpinAnimation = false
    
    // main function
    var body: some View {
        
        // random parent view
        ZStack {
            
            // Background color
            //Color(red: 0.13, green: 0.54, blue: 0.42)
            Color(red: 0.80, green: 0.04, blue: 0.36)
            
            // Title
            VStack {
                Text("Interactive Illusion")
                .font(.custom("Helvetica-Light", size: 45))
                Text("Tap to Start")
                .font(.custom("Helvetica-Light", size: 20))
                // added tap gesture to text
                .onTapGesture {self.wheelSpinAnimation.toggle()}
                Spacer()
            }.padding(.horizontal, 10).padding(.top, 50)
            
            // body + formatting
            VStack {
                // row
                HStack {
                    // custom view with arguments I can edit
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                }
                // row + formatting
                HStack {
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                    Spacer()
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 360, end: 0)
                }.padding(.trailing, 40).padding(.leading, 40)
             
                HStack {
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                }
         
                HStack {
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 360, end: 0)
                    Spacer()
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                }.padding(.trailing, 40).padding(.leading, 40)
            
                HStack {
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                }
            
                HStack {
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 360, end: 0)
                    Spacer()
                    WheelView(wheelSpinAnimation: wheelSpinAnimation, start: 0, end: 360)
                }.padding(.trailing, 40).padding(.leading, 40)
            }.padding(.top, 120)
        }.edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
            .opacity(moonAnimation ? 0.2 : 1.0)
            .animation(Animation.easeInOut(duration: 1.0))
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    self.moonAnimation.toggle()
            }
*/
