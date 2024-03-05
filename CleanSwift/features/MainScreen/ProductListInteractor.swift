//
//  ProductListInteractor.swift
//  CleanSwift
//
//  Created by Vusal Islamzada on 05.03.24.
//

import UIKit

protocol ProductListBusinessLogic {
    func getList(request : ProductList.List.Request)
}

protocol ProductListDataStore {
    var flightResponse : FlightResponse? { get set }
}

class ProductListInteractor: ProductListBusinessLogic, ProductListDataStore {
    var flightResponse: FlightResponse? = nil
    var presenter : ProductListPresentationLogic?
    var worker : ProductApiWorker?
    
    func getList(request : ProductList.List.Request) {
        worker = ProductApiWorker()
        worker?.getList(completion: { (response, error) in
            self.flightResponse = response
            
            let presentationResponse = ProductList.List.Response(flightDetailResponse: response?.data)
            self.presenter?.present(response: presentationResponse)
        })
    }
}
