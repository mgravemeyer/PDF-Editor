import SwiftUI

struct PDFListView: View {
    
    init() {

    }
    
    var pdfs = [String]()
    
    var body: some View {
        List {
            ForEach(pdfs, id: \.self) {
                NavigationLink($0, destination: PDFListDetailView(pdfDetailUIView: PDFDetailUIView(selection: $0)))
            }
        }
    }
}

struct PDFListView_Previews: PreviewProvider {
    static var previews: some View {
        PDFListView()
    }
}
