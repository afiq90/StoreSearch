//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Cliqers on 26/07/2017.
//  Copyright © 2017 Cliqers. All rights reserved.
//

import Foundation
import UIKit

class SearchResult {
    
    var name = ""
    var artistName = ""
    var artworkSmallURL = ""
    var artworkLargeURL = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
    
}

func > (lhs:SearchResult, rhs:SearchResult ) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .orderedDescending
}
