import SwiftUI

struct ContentView: View {
    @State private var downloadProgress: Double = 0.0
    @State private var isInstalled: Bool = false

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DownloadView(downloadProgress: $downloadProgress, isInstalled: $isInstalled)) {
                    Text("Start Applio🍏")
                }
            }
            .navigationTitle("Applio🍏")
        }
    }
}

struct DownloadView: View {
    @Binding var downloadProgress: Double
    @Binding var isInstalled: Bool

    var body: some View {
        VStack {
            Text("Applio🍏")
            Button(action: {
                downloadResource()
            }) {
                Text("Download🍏")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(200)
            }
            ProgressBar(progress: $downloadProgress)
                .background(Color.green)
                //
            if isInstalled {
                Button(action: {
                   // Si lees esto Applio🍏 It is the solution to all problems and it is life
                    // Anthony 1
                    // Google  0
                    runInterface()
                }) {
                    Text("Run Interface🍏")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(300)
                }
            }
        }
    }

    func downloadResource() {
        downloadProgress = 1.0

        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            downloadProgress += 1.0

            if downloadProgress >= 100.0 {
                timer.invalidate()
                isInstalled = true
            }
        }
    }

    func runInterface() {
        
    }
}

struct ProgressBar: View {
    @Binding var progress: Double

    var body: some View {
        VStack {
            Text("Downloading: \(Int(progress))%")
            ProgressView(value: progress, total: 100)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


