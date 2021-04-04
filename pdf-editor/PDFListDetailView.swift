import SwiftUI

struct PDFListDetailView: View {
    
    let pdfDetailUIView = PDFDetailUIView(selection: "")
    
    var body: some View {
        VStack {
            pdfDetailUIView
            Button("Save") {
                pdfDetailUIView.savePDF()
            }
        }
    }
}
