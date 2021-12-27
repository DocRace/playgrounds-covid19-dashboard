import SwiftUI
import Alamofire
import SwiftyJSON

class Observer {

    func getCovidData(completion: @escaping ([CovidData]) -> ()) {
        var covidDataArray: [CovidData] = []
        guard let url = URL(string: "https://api.inews.qq.com/newsqa/v1/query/inner/publish/modules/list?modules=chinaDayList,chinaDayAddList,nowConfirmStatis,provinceCompare") else { return }
        
        AF.request(url).validate().responseData { res in
            if let jsonData = res.data, let json = try? JSON(data: jsonData) {
                let provinceCompare = json["data"]["provinceCompare"]
                for (province, provinceJSON) in provinceCompare {
                    let item = CovidData(id: covidDataArray.count, province: province, confirm: provinceJSON["nowConfirm"].intValue, heal: provinceJSON["heal"].intValue, dead: provinceJSON["dead"].intValue, newConfirm: provinceJSON["confirmAdd"].intValue)
                    covidDataArray.append(item)
                }
                completion(covidDataArray)
            }
        }
    }
}
