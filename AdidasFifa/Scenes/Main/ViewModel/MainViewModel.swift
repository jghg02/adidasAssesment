//
//  MainViewModel.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 21-03-23.
//

import Foundation
import NET

class MainViewModel {
    
    // MARK: - Properties
    
    let allData: DataBiding<[Match]?> = DataBiding(nil)
    let spinner: DataBiding<Bool> = DataBiding(true)
    var error: DataBiding<Bool> = DataBiding(false)
    
    func fetchData() async {
        spinner.value = false
        
        let client = NETClient<[Match], ErrorResponse>()
        let request = NETRequest(url: URL(string: NetworkConstants.baseURL)!)
        switch await client.request(request) {
        case .success(let data):
            self.spinner.value = true
            self.allData.value = data.value
        case .failure(let error):
            print(error)
            self.spinner.value = true
            self.error.value = true
        }
    }
    
}
