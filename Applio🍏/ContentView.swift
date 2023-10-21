import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 184 / 255, green: 255 / 255, blue: 148 / 255) // Fondo verde
                .ignoresSafeArea()
            
            VStack {
                Text("🍏Applio🍏")
                
                
                    Menu("Option") {
                    Text("Start Applio🍏 1")
                    Text("Update Applio🍏 2")
                }
                    .font(.custom("Pacifico-Regular", size: 30)) // Fuente personalizada
                    .foregroundColor(Color(red: 53 / 255, green: 103 / 255, blue: 86 / 255)) // Color de texto personalizado
                
                Image("aesthetic_image") // Agrega una imagen estética
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
