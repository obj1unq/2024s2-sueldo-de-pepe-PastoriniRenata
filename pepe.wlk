object pepe {
    var cargo = cadete
    var bonoRes  = nulo
    var bonoPres = nulo
    var faltas = 0
	
    method cargo(){
        return cargo
    }
    method cargo(_cargo){
        cargo = _cargo
    }

    method sueldo(){
        return self.neto() + bonoRes.bonoResultado(self) + bonoPres.bonoPresentismo(self)
    }

    method neto(){
        return cargo.neto()
    }
    method bonoRes(_bonoRes){
        bonoRes = _bonoRes
    }

    method bonoPres(_bonoPres){
        bonoPres = _bonoPres
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


