import SwiftUI

struct ContentView: View {
    @State private var modelURL = ""
    @State private var audioFileURL: URL?
    @State private var selectedAlgorithm = "pm"
    @State private var outputAudio: URL?
//Anthony = 1
//Google = 0
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Inferencia")) {
                    TextField("URL del modelo", text: $modelURL)
                    Button("Cargar archivo de audio") {
                       
                    }
                    if let audioFileURL = audioFileURL {
                        Text("Archivo de audio cargado: \(audioFileURL.lastPathComponent)")
                    }
                    Picker("Algoritmo", selection: $selectedAlgorithm) {
                        Text("pm").tag("pm")
                        Text("harvest").tag("harvest")
                      
                    }
                    Button("Convertir") {
                     
                    }
                }

                Section(header: Text("Salida")) {
                    if outputAudio != nil {
                        Text("Audio de salida generado.")
                        Button("Descargar Audio") {
                           
                        }
                    }
                }
            }
            .navigationBarTitle("Applio🍏")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

