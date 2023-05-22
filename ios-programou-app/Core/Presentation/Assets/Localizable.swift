import Foundation

protocol Localizable {
    var table: String { get }
    func getByKey(_ title: String) -> String
}

extension Localizable {
    func getByKey(_ title: String) -> String {
       NSLocalizedString(title, tableName: table, comment: "")
    }
}
