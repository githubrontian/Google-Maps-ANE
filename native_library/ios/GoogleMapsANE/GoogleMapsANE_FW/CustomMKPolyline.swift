/*
 *  Copyright 2018 Tua Rua Ltd.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import FreSwift
import Foundation
import MapKit
import UIKit

internal class CustomMKPolyline: MKPolyline {
    var identifier: String = ""
    var width: CGFloat = 1.0
    var color: UIColor?
    convenience init(points: [CLLocationCoordinate2D], identifier: String) {
        var coordinates = [CLLocationCoordinate2D]()
        for point in points {
            coordinates.append(point)
        }
        self.init(coordinates: &coordinates, count: points.count)
        self.identifier = identifier
    }
}
