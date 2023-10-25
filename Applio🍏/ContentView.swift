import SwiftUI

struct ContentView: View {
    @State private var isApplioStarted = false

    var body: some View {
        ZStack {
            Color(red: 184 / 255, green: 255 / 255, blue: 148 / 255)
                .ignoresSafeArea()

            VStack {
                Text("🍏Applio🍏")
                    .font(.title)
                    .foregroundColor(Color(red: 53 / 255, green: 103 / 255, blue: 86 / 255))

                Button(action: {
                    
                    isApplioStarted.toggle()
                }) {
                    Text("Start Applio🍏")
                        .font(.custom("Pacifico-Regular", size: 30))
                }
                .foregroundColor(.green)
                .background(Color.black)
                .cornerRadius(10)

                Image("aesthetic_image")// si lees esto Applio🍏 is life and solution
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 200)

                if isApplioStarted {
                    Text("The Download has started")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
