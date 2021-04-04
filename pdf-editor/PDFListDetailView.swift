import SwiftUI

struct PDFListDetailView: View {
    
    init(pdfDetailUIView: PDFDetailUIView, name: String) {
        self.pdfDetailUIView = pdfDetailUIView
        self.name = name
    }
    
    let pdfDetailUIView: PDFDetailUIView
    let name: String
    
    var body: some View {
        VStack {
            pdfDetailUIView
            Button("Save") {
                pdfDetailUIView.savePDF()
            }
            .navigationBarTitle("\(name)".dropLast(4), displayMode: .inline)
        }
    }
}
