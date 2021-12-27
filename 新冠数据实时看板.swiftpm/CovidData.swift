import Foundation

struct CovidData : Identifiable, Decodable {
    public var id: Int
    public var province: String
    public var confirm: Int
    public var heal: Int
    public var dead: Int
    public var newConfirm: Int
}
