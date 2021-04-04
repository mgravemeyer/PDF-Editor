import SwiftUI

struct PDFListView: View {
    
    init() {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        do {
            let urls = try FileManager.default.contentsOfDirectory(at: url!, includingPropertiesForKeys: nil)
            for url in urls {
                print(url.lastPathComponent)
                pdfs.append(url.lastPathComponent)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    var pdfs = [String]()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(pdfs, id: \.self) {
                    NavigationLink($0, destination: ContentView(selectedPDF: $0))
                }
            }
        }
    }
}

struct PDFListView_Previews: PreviewProvider {
    static var previews: some View {
        PDFListView()
    }
}
