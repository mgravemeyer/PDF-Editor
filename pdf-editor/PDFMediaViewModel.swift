import Foundation
import Combine

class PDFMediaViewModel: ObservableObject {
    
    init() {
        loadLocalPDFNames()
    }
    
    @Published private(set) var pdfNameList = [String]()
    
    func loadLocalPDFNames() {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        do {
            let urls = try FileManager.default.contentsOfDirectory(at: url!, includingPropertiesForKeys: nil)
            for url in urls {
                print(url.lastPathComponent)
                pdfNameList.append(url.lastPathComponent)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func addPDF(name: String) {
        self.pdfNameList.append(name)
    }
}
