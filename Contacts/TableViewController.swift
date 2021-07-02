//
//  TableViewController.swift
//  Contacts
//
//  Created by Alina Bikkinina on 02.07.2021.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [ContactCellData] = [ContactCellData(contactName: "Никита Сосюк", phoneNumber: "8 (800) 555-35-35", job: "КФУ, ИТИС", comment: "Доктор яблочных наук"),
        ContactCellData(contactName: "Никита Ляпустин", phoneNumber: "8 (843) 202-20-20", job: "КФУ, ИТИС", comment: "Специалист по работе с молодёжью"),
        ContactCellData(contactName: "Инна Трусова", phoneNumber: "8 (919) 113-89-97", job: "Бомонка(это пока)", comment: "Будущий космонавт Германии"),
        ContactCellData(contactName: "Марк Кауфман", phoneNumber: "8 (919) 303-10-15", job: "Свадьбы, похороны, детские утренники. Как повезет, короче", comment: "еще никогда в моей жизни запятая столько не значила"),
        ContactCellData(contactName: "Пекарня Spar", phoneNumber: "8 (800) 500-13-29", job: "EuroSpar на Краснококшайской", comment: "Рекомендую косички с маком и сахаром. Шикарная сдоба к чаю"),
        ContactCellData(contactName: "Елена Жизнерадостная", phoneNumber: "8 (843) 208-51-90", job:"Похоронное бюро «Ритуал»" , comment: "Уже где-то растет дерево, из которого будет сколочен твой гроб"),
        ContactCellData(contactName: "Николай Летун", phoneNumber: "8 (809) 505-47-77", job: "Авиакомпания «Победа/»", comment: "Уважаемые пассажиры! Полёт нашего лайнера подходит к концу. У вас есть ещё время, чтобы попрощаться друг с другом.")]
    
     
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let contactViewController = storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as? ContactViewController else { return }
        
        contactViewController.person = data[indexPath.row]
        present(contactViewController, animated: true)
    }
}

extension TableViewController: UITableViewDataSource {
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else {
            return UITableViewCell()
        }
        cell.setData(contact: data[indexPath.row])
        return cell
    }
}

struct ContactCellData {
    let contactName: String
    let phoneNumber: String
    let job: String
    let comment: String
}
