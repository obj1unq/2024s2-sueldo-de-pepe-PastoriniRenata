object pepe {
    var categoria = cadete
    var _bonoRes_  = nulo
    var _bonoPres_ = nulo
    var faltas = 0
	
    method categoria(){
        return categoria
    }
    method categoria(_categoria){
        categoria = _categoria
    }

    method sueldo(){
        return self.neto() +  self.bonoRes() + self.bonoPres()
    }

    method neto(){
        return categoria.neto()
    }
    method  _bonoRes_(_bonoRes){
         _bonoRes_ = _bonoRes
    }

    method _bonoPres_(_bonoPres){
        _bonoPres_ = _bonoPres
    }

    method bonoRes(){
        return  _bonoRes_.bonoResultado(self)
    }

    method bonoPres(){
        return  _bonoPres_.bonoPresentismo(self)
    }

    method faltas(){
        return faltas
    }
    method faltas(_faltas){
        faltas = _faltas
    }

}


object porcentaje{
    method bonoResultado (objeto){
        return objeto.neto() * 0.1
    }
}

object montoFijo{
    method bonoResultado(objeto){
        return 800
    }

}

object normal{

    method bonoPresentismo(objeto){
        if (objeto.faltas()==0) {
            return 2000} 
            else{    
                if (objeto.faltas()==1) 
                    { 
                        return 1000} 
                    else{    
                        return 0  
                            }  
                }
    }
    
}


object ajuste{
    method bonoPresentismo (objeto){
        if (objeto.faltas()==0) 
            { 
                return 100} 
            else{    
                return 0
            } 
    }
    
}
object demagogico{
    method bonoPresentismo(objeto){
        if (objeto.neto() > 18000) {
            return   500 
            }else{
                return  300
                }
    }
    
}
object nulo{
    method bonoPresentismo (objeto){
        return 0
    }
    method bonoResultado (objeto){
        return 0
    }
}




object gerente{
    method neto(){
        return 15000
    }
}

object cadete{
    method neto(){
        return 20000    
    }
}

//--------------------------------------BONUS-------------------------------

object sofia {
    var categoria = cadete
    var bonoRes  = nulo
	
    method categoria(){
        return categoria
    }
    method categoria(_categoria){
        categoria = _categoria
    }

    method sueldo(){
        return self.neto() + bonoRes.bonoResultado(self)
    }

    method neto(){
        return categoria.neto() * 1.3
    }
    method bonoRes(_bonoRes){
        bonoRes = _bonoRes
    }


}

object vendedor{
    var _neto = 16000

    method neto(){
        return _neto
    }

    method activarAumentoPorMuchasVentas(){
        _neto = _neto * 1.25 
    }
    
    method desactivarAumentoPorMuchasVentas(){
        _neto = _neto / 1.25 
    }
}


object medioTiempo {
    var _neto = 1

    method categoriaBase(categoria){
        _neto = categoria.neto()/2
    }

    method neto(){
        return _neto
    }

}




object roque {
    var bonoRes  = nulo
    
    method sueldo(){
        return self.neto() + bonoRes.bonoResultado(self) + 9000
    }

    method neto(){
        return 28000
    }

    method bonoRes(_bonoRes){
        bonoRes = _bonoRes
    }
}


object ernesto {
    var bonoPres  = nulo
    var companiero = 0
    method sueldo(){
        return self.neto() + bonoPres.bonoPresentismo(self) + 9000
    }

    method neto(){
        return companiero.neto()
    }


    method companiero(compa){
        companiero = compa
    }
    method companiero(){
        return companiero
    }
    method bonoPres(_bonoPres){
        bonoPres = _bonoPres
    }
    method faltas(){
        return 0 // "Se sabe que ernesto no falta nunca"
    }
}









