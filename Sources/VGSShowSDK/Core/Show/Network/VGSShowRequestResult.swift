//
//  VGSShowRequestResult.swift
//  VGSShow
//
//  Created by Eugene on 26.10.2020.
//

import Foundation

/// Response enum cases for SDK requests.
@frozen public enum VGSShowRequestResult {
	/**
	 Success response case.

	 - Parameters:
		- code: `Int` object. Response status code.
        - data: `VGSJSONData` object. Response data.
	*/
    case success(_ code: Int, _ info: VGSJSONData?)

	/**
	 Failed response case.

	 - Parameters:
		- code: response status code.
		- error: `Error` object.
	*/
	case failure(_ code: Int, _ error: Error?)
}
