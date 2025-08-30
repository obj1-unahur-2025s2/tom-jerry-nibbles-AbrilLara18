import ratones.*

object tom {
    var energia =50
    method energiaConsumida(metros) {
      return metros/2
    }
    method comerRaton(raton){
        energia+=12+raton.peso()
    }
    method correr(metros){
        energia=(energia-(self.energiaConsumida(metros))).max(0)
    }
    method velocidadMaxima(){
        return 5+ energia/10
    }
    method puedeCazar(distancia){
        return energia >= self.energiaConsumida(distancia)
    }
    method cazarA(presa,distancia){
        if(self.puedeCazar(distancia)){
        self.correr(distancia)
        self.comerRaton(presa)
        }
    }
    method energia() =energia
}
