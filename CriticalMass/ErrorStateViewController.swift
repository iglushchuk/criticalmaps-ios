//
//  ErrorStateViewController.swift
//  CriticalMaps
//
//  Created by Malte Bünz on 04.11.19.
//  Copyright © 2019 Pokus Labs. All rights reserved.
//

import UIKit

class ErrorStateViewController: UIViewController {
    @IBOutlet private weak var errorTitle: UILabel!
    @IBOutlet private weak var errorMessage: UILabel!
    @IBOutlet private weak var retryButton: UIButton!

    var reloadHandler: () -> Void = {}
    var errorStateModel: ErrorStateModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        errorTitle.text = errorStateModel.errorTitle
        errorMessage.text = errorStateModel.errorMessage
    }

    @IBAction func reload(_ sender: Any) {
        reloadHandler()
    }
}

extension ErrorStateViewController {
    static func createErrorStateController(with viewModel: ErrorStateModel) -> ErrorStateViewController {
        let controller = ErrorStateViewController(nibName: String(describing: ErrorStateViewController.self),
                                                  bundle: Bundle(for: ErrorStateViewController.self))
        controller.errorStateModel = viewModel
        return controller
    }

    static let `default` = createErrorStateController(with: .default)
}
