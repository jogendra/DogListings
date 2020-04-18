//
//  Constants.swift
//  DogHome
//
//  Created by Jogendra on 18/04/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import UIKit

struct AppConstants {
    struct Image {
        static let pug = UIImage(named: "pug.jpg")
        static let labrador = UIImage(named: "Labrador.jpg")
        static let lhasa = UIImage(named: "lhasa.jpg")
        static let spanielBrittany = UIImage(named: "spaniel-brittany.jpg")
        static let pembroke = UIImage(named: "pembroke.jpg")
        static let friseBichon = UIImage(named: "frise-bichon.jpg")
    }
    
    struct Dogs {
        static let dogsData: [DogDataObject] = [DogDataObject(name: "Pug", image: Image.pug),
                                                DogDataObject(name: "Labrador", image: Image.labrador),
                                                DogDataObject(name: "Lhasa", image: Image.lhasa),
                                                DogDataObject(name: "Spaniel Brittany", image: Image.spanielBrittany),
                                                DogDataObject(name: "Pembroke", image: Image.pembroke),
                                                DogDataObject(name: "Frise Bichon", image: Image.friseBichon)]
    }
}
