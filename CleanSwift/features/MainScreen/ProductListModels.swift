//
//  ProductListModels.swift
//  CleanSwift
//
//  Created by Vusal Islamzada on 05.03.24.
//

import UIKit

enum ProductList {
    
    enum List {
        
        struct Request {
            let pageIndex : Int
            let pageItemCount : Int
        }
        
        struct Response {
            let flightDetailResponse : FlightDataResponse?
        }
        
        struct ViewModel {
            let rows : [Rows]
        }
        
    }
    
    enum Rows {
        
        case empty
        case product(product : FlightSearchTableCellUIData)
        
        func identifier() -> String {
            switch self {
            case .empty:
                return "empty_cell_identifier"
            case .product:
                return "FlightsTableViewCell"
            }
        }
    }
    
    enum ProductDelete {
        struct Request {
            
        }
        
        struct Response {
            
        }
        
        struct ViewModel {
            
        }
    }
}
