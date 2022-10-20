import Foundation

class ExchangeViewModel: ObservableObject {
    @Published var passCountry: Country = Country.KR
    @Published var catchCountry: Country = Country.JP
    @Published var exchangeRate: String = "??"
    @Published var exchangeTime: String = "??"
    @Published var money: String = ""
    
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
