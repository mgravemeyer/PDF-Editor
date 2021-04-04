import SwiftUI

struct ContentView: View {
    let pdfDetailView = PDFDetailView()
    let contentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    var body: some View {
        NavigationView {
            PDFListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
