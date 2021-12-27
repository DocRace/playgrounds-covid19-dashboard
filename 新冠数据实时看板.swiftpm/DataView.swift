import SwiftUI

struct LabelView: View {
    var data: CovidData
    var body: some View {
        Text(data.province)
    }
}

struct DetailView: View {
    var data: CovidData
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                VStack(alignment: .center) {
                    Text("确诊")
                    Text("\(data.confirm)").font(.system(size: 60)).fontWeight(.bold)
                }.padding().frame(maxWidth: .infinity).background(Color(UIColor.secondarySystemBackground)).cornerRadius(15)
                
                VStack(alignment: .center) {
                    Text("新增确诊")
                    Text("\(data.newConfirm)").font(.system(size: 60)).fontWeight(.bold)
                }.padding().frame(maxWidth: .infinity).background(Color(UIColor.secondarySystemBackground)).cornerRadius(15)
                
                VStack(alignment: .center) {
                    Text("治愈")
                    Text("\(data.heal)").font(.system(size: 60)).fontWeight(.bold)
                }.padding().frame(maxWidth: .infinity).background(Color(UIColor.secondarySystemBackground)).cornerRadius(15)
                
                VStack(alignment: .center) {
                    Text("死亡")
                    Text("\(data.dead)").font(.system(size: 60)).fontWeight(.bold)
                }.padding().frame(maxWidth: .infinity).background(Color(UIColor.secondarySystemBackground)).cornerRadius(15)
            }
        }.padding(.horizontal)
    }
}
