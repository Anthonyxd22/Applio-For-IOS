import SwiftUI

struct ContentView: View {
    @State private var isApplioStarted = false // Variable de estado para rastrear si Applio se ha iniciado

    var body: some View {
        ZStack {
            Color(red: 184 / 255, green: 255 / 255, blue: 148 / 255)
                .ignoresSafeArea()

            VStack {
                Text("🍏Applio🍏")
                    .font(.title)
                    .foregroundColor(Color(red: 53 / 255, green: 103 / 255, blue: 86 / 255))

                Button(action: {
                    // Acción cuando se presiona el botón "Start Applio"
                    isApplioStarted.toggle()
                }) {
                    Text("Start Applio🍏")
                        .font(.custom("Pacifico-Regular", size: 30))
                }
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)

                Image("aesthetic_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)

                if isApplioStarted {
                    Text("Applio🍏 ha comenzado")
                        .font(.title)
                        .foregroundColor(.green)
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

