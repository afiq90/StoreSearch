//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Cliqers on 27/07/2017.
//  Copyright © 2017 Cliqers. All rights reserved.
//

import Foundation
import UIKit

class DimmingPresentationController: UIPresentationController {
    
    override var shouldRemovePresentersView: Bool {
        return false
    }
    
    lazy var dimmingView = GradientView(frame: CGRect.zero)
    
    //The presentationTransitionWillBegin() method is invoked when the new view controller is about to be shown on the screen
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        containerView!.insertSubview(dimmingView, at: 0)
        dimmingView.alpha = 0
        
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { (_) in
                self.dimmingView.alpha = 1
            }, completion: nil)
        }
    }
    
    override func dismissalTransitionWillBegin() {
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: { (_) in
                self.dimmingView.alpha = 0
            }, completion: nil)
        }
    }
}
