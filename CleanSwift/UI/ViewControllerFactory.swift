//
//  ViewControllerFactory.swift
//  CleanSwift
//
//  Created by Vusal Islamzada on 05.03.24.
//

import UIKit

class ViewControllerFactory {
    static var shared : ViewControllerFactory = ViewControllerFactory()
    
    func makeMainTabbarBar() -> UITabBarController {
        let viewController = TabbarViewController(nibName: "TabbarViewController", bundle: nil)
        viewController.createViewControllers()
        return viewController
    }
    
    func makeProductListController() -> UIViewController {
        let productListController = ProductListViewController(nibName: "ProductListViewController", bundle: Bundle.main)
        
        let interactor = ProductListInteractor()
        let presenter = ProductListPresenter()
        
        productListController.interactor = interactor
        interactor.presenter = presenter
        
        presenter.viewController = productListController
        
        return productListController
    }
    
    func makeSplashController() -> UIViewController {
        let splash = SplashViewController(nibName: "SplashViewController", bundle: Bundle.main)
        return splash
    }
    
    func makeBasketController() -> UIViewController {
        let basketController = BasketViewController(nibName: "BasketViewController", bundle: Bundle.main)
        return basketController
    }
    
    func makeFavoriteController() -> UIViewController {
        let favController = FavoriteViewController(nibName: "FavoriteViewController", bundle: Bundle.main)
        return favController
    }

  
}
