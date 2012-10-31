class RockPaperScissors
  
def player_throw
      :piedra
    end
    
    def computer_throw
      :papel
    end
    
    def tiradas
      [:piedra, :papel, :tijeras]
    end
    
    def ganas
      {:piedra => :tijeras,
       :papel => :piedra,
       :tijeras => :papel,
       }
    end
    
    def obtener_humano
      if tiradas.include?player_throw
        return player_throw
      end
    end
    
    def obtener_maquina
      if tiradas.include?computer_throw
        return computer_throw
      end
    end
    
    def pierde
      { :papel => :tijera,
:tijeras => :piedra,
:piedra => :papel}
    end
    def juego_maquina
     :piedra
    end
    
end
