//
//  ViewController.swift
//  Applio🍏
//
//  Created by Anthony on 10/15/23.
//

import Foundation
import UIKit

class ViewController: UIViewController, UIDocumentPickerDelegate {

    @IBAction func uploadAudio(_ sender: UIButton) {
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["public.audio"], in: .import)
        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        for url in urls {
            // Copia el archivo seleccionado a la carpeta "dataset" de tu proyecto.
            let destinationURL = getDatasetFolderURL().appendingPathComponent(url.lastPathComponent)
            do {
                try FileManager.default.copyItem(at: url, to: destinationURL)
                print("Archivo copiado a la carpeta 'dataset'.")
            } catch {
                print("Error al copiar el archivo: \(error.localizedDescription)")
            }
        }
    }
    
    func getDatasetFolderURL() -> URL {
        // Obtiene la URL de la carpeta "dataset" en tu proyecto.
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let datasetFolderURL = documentsDirectory.appendingPathComponent("dataset")
        
        if !FileManager.default.fileExists(atPath: datasetFolderURL.path) {
            do {
                try FileManager.default.createDirectory(at: datasetFolderURL, withIntermediateDirectories: true, attributes: nil)
            } catch {
                print("Error al crear la carpeta 'dataset': \(error.localizedDescription)")
            }
        }
        
        return datasetFolderURL
    }
}

