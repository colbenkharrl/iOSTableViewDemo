//
//  PlacesModel.swift
//  PlacesApp
//
//  Created by Colben Matthew Kharrl on 2/20/17.
//  Copyright © 2017 ASU. All rights reserved.
//

//  MODEL

import Foundation

class PlaceList {
    
    //  list of places
    var places: [Place] = []
    
    //  initialize with 5 places
    init() {
        var newPlace = Place(n: "Catalina Island", i: "catalina.jpg", d: "Catalina Island is an island off of the coast of southern California. There is a native buffalo population living on the island!")
        places.append(newPlace)
        newPlace = Place(n: "Key West, Florida", i: "keywest.jpg", d: "The Florida Keys are a string of islands that extend the southern-most tip of Florida!")
        places.append(newPlace)
        newPlace = Place(n: "Muir Woods, California", i: "muirwoods.jpg", d: "The Muir Woods are a redwood forest near the San Francisco Bay area. The trees here are some of the biggest in the world!")
        places.append(newPlace)
        newPlace = Place(n: "Niagara Falls, New York", i: "niagra.jpg", d: "Niagara Falls is the collective name for three waterfalls that straddle the international border between Canada and the United States!")
        places.append(newPlace)
        newPlace = Place(n: "Rincón de la Vieja Volcano", i: "rincon.jpg", d: "Rincón de la Vieja Volcano is located in the Guanacaste province of northwestern Costa Rica!")
        places.append(newPlace)
    }
}

class Place {
    
    //  place properties
    private var name: String = ""
    private var image: String = ""
    private var description: String = ""
    
    //  standard init
    init(n: String, i: String, d: String) {
        name = n
        image = i
        description = d
    }
    
    //  getters
    internal func getName() -> String {
        return name
    }
    internal func getImage() -> String {
        return image
    }
    internal func getDescription() -> String {
        return description
    }
}
