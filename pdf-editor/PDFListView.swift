import SwiftUI

struct PDFListView: View {
    
    @StateObject var pdfMediaVM = PDFMediaViewModel()
    
    var body: some View {
        List {
            ForEach(pdfMediaVM.pdfNameList, id: \.self) {
                NavigationLink($0.dropLast(4), destination: PDFListDetailView(pdfDetailUIView: PDFDetailUIView(selection: $0), name: $0))
            }
        }.navigationBarTitle("PDF's", displayMode: .large)
    }
}

struct PDFListView_Previews: PreviewProvider {
    static var previews: some View {
        PDFListView()
    }
}
