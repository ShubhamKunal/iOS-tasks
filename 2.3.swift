// THIS IS NOT COMPLETE YET

class CEO:Company{
    Product_Manager pm;
    func getProductManager(){
        return pm.getName()
    }
    func pm_to_printdevs(){
        return pm.printDev()
    }
    func pm_to_printAll(){
        print(name)
        pm.print_all()
    }
}
class Product_Manager:Company{
    var devs = [Developer]()
    var name = ""
    init(n:String){
        name = n
    }
    func getName() -> String{
        return name
    }
    func printDev(){
        for dev in devs(){
            print(dev.getName())
        }
    }
    func print_all(){
        print(name)
        printDev()
    }
}
class Developer: Company{
    var name = ""
    var pm
    init(n: String, p:Product_Manager){
        name = n
        pm = p
    }
    func getName() -> String{
        return name
    }
    func sendMsg_dev(index:int, msg:String){

    }
    func sendMsg_pm(){

    }
    func sendMsg_ceo(){

    }
}
class Company{
    var devs = [Developer]()
}