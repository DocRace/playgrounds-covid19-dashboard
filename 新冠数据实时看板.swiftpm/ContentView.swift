import SwiftUI

struct ContentView: View {
    @State var data: [CovidData] = []

    var body: some View {
        NavigationView {
            List(data.sorted(by: ({ $0.province < $1.province })), id: \.id) { covidData in 
                NavigationLink { 
                    DetailView(data: covidData)
                } label: { 
                    LabelView(data: covidData)
                }
            }.onAppear {
                Observer().getCovidData { data in
                    self.data = data
                }
            }
            
            .navigationTitle("新冠疫情数据")
        }
    }
}



