import Foundation
import Alamofire

class ExchangeViewModel: ObservableObject {
    @Published var passCountry: Country = Country.KR
    @Published var catchCountry: Country = Country.JP
    
    @Published var exchangeRate: Double = 0.0
    @Published var exchangeTime: String = ""
    @Published var money: String = ""
    
    @Published var isSucced: Bool = false
    @Published var isError: Bool = false
    @Published var errorMessage: String = ""
    
    @Published var exchangeCalculatValue: Double = 0.0
    
    func exchangeMoney() {
        if let inputMoney: Double = Double(money),
           inputMoney >= 0 && inputMoney <= 10000 {
            isError = false
            isSucced = true
            exchangeCalculatValue = inputMoney * exchangeRate
            print("exchangeMoney -> present \(exchangeCalculatValue)")
        } else {
            isError = true
            errorMessage = "송금액이 올바르지 않습니다"
            print("exchangeMoney error")
        }
    }
    
    func getExchange() {
        let apikey = "QWxkfkl26s1favjFlew1TIhZZ5dJ0dwy"
        let url = "https://api.apilayer.com/currency_data/live?source=\(passCountry.unit())&currencies=\(catchCountry.unit())"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        request.addValue(apikey, forHTTPHeaderField: "apikey")
        
        DispatchQueue.main.async {
//            AF.request(request).responseData(completionHandler: { res in
//                switch res.response?.statusCode {
//                case 200:
//                    if let data = try? JSONDecoder().decode(ExchangeModel.self, from: res.data!) {
//                        self.exchangeRate = data.quotes[self.passCountry.unit() + self.catchCountry.unit()]!
//                    } else {
//                        print("데이터 디코딩 에러")
//                    }
//                    self.exchangeTime = Date().formatTime()
//                default:
//                    print("네트워크 에러")
//                }
//            })
        }
    }
    
    func printLog() {
        var log = "-------------------value-------------------\n"
        log.append("pass: \(passCountry)\n")
        log.append("patch: \(catchCountry)\n")
        log.append("exchange: \(exchangeRate)\n")
        log.append("time: \(exchangeTime)\n")
        log.append("money: \(money)\n")
        log.append("-------------------------------------------")
        print(log)
    }
}
