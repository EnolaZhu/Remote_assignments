//
//  ViewController.swift
//  Task3
//
//  Created by Enola Zhu on 2022/1/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.view.backgroundColor = UIColor.orange
        setUpAllLabels()
        Task {
            do {
                let results = try await GetData.getDataWithAsyncURLSession()
                id.text = results.stationID
                name.text = results.stationName
                address.text = results.stationAddress
            } catch {
                print(error)
            }
        }
    }
    
    func setUpAllLabels() {
        id.translatesAutoresizingMaskIntoConstraints = false
        address.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        // Font size
        id.font = UIFont.systemFont(ofSize: 30)
        name.font = UIFont.systemFont(ofSize: 80)
        address.font = UIFont.systemFont(ofSize: 18)
        // Font color
        id.textColor = UIColor.white
        name.textColor = UIColor.white
        address.textColor = UIColor.white
        // Make label size fit the size of text
        id.sizeToFit()
        name.sizeToFit()
        address.sizeToFit()
        // Location
        let xConstraintOfName = NSLayoutConstraint(item: name!, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraintOfName = NSLayoutConstraint(item: name!, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: -100)
        let xConstraintOfId = NSLayoutConstraint(item: id!, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraintOfId = NSLayoutConstraint(item: id!, attribute: .bottom, relatedBy: .equal, toItem: name, attribute: .top, multiplier: 1, constant: -35)
        let xConstraintOfAddress = NSLayoutConstraint(item: address!, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraintOfAddress = NSLayoutConstraint(item: address!, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: -200)
        NSLayoutConstraint.activate([xConstraintOfName, yConstraintOfName, xConstraintOfId, yConstraintOfId, xConstraintOfAddress, yConstraintOfAddress])
    }
    // Get data from url
    struct Data:Codable {
        var stationID:String?
        var stationName:String?
        var stationAddress:String?
    }
    struct GetData {
        enum DataFetcherError: Error {
            case invalidURL
        }
        static func getDataWithAsyncURLSession() async throws -> Data {
            guard let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json") else {
                throw DataFetcherError.invalidURL
            }
            let (data, _) = try await URLSession.shared.data(from: url)
            let dataResult = try JSONDecoder().decode(Data.self, from: data)
            return dataResult
        }
    }
}

