import SwiftUI

struct PDFListDetailView: View {
    
    init(pdfDetailUIView: PDFDetailUIView) {
        self.pdfDetailUIView = pdfDetailUIView
    }
    
    let pdfDetailUIView: PDFDetailUIView
    
    var body: some View {
        VStack {
            pdfDetailUIView
            Button("Save") {
                pdfDetailUIView.savePDF()
            }
        }
    }
}
