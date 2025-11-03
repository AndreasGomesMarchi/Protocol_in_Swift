import UIKit

protocol Downloadable {
    func download() -> String //protocolo de download
}

struct integerAPI {
    func fetch() -> Int {123} //Api que desejo integrar que funciona com INT
}

struct stringAPI {
    func download() -> String { //API que so funciona com String conforme o protocolo Downloadable
        "Hello World"
    }
}

// 1 way
struct integerAPIAdapter: Downloadable {
    func download() -> String {
        String(integerAPI().fetch()) //O adaptador funcionando, pegando o int da struct stringAPI em transformando em String
    }
}

// 2 way
extension stringAPI: Downloadable {}

extension integerAPI: Downloadable {
    func download() -> String {
        String(integerAPI().fetch())
    }
}

struct DataLoader {
    var api: Downloadable
    
    func downloadData() -> String { //O banco de dados que só recebe String
        api.download()
    }
}

var dataLoader = DataLoader(api: integerAPI())
dataLoader.downloadData()

dataLoader.api = stringAPI()
dataLoader.downloadData()

dataLoader.api = integerAPIAdapter()
dataLoader.downloadData()
