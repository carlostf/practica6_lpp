require "ppt_main"

describe RockPaperScissors do
  before :each do
    @ppt_obj = RockPaperScissors.new()
  end
  
  it "Debe existir una tirada para el humano" do
    @ppt_obj.player_throw.should == :piedra
  end
  
  it "Debe existir una tirada para la maquina" do
     @ppt_obj.computer_throw.should == :papel
  end
  
  it "Debe existir una lista de tiradas validas" do
      @ppt_obj.tiradas.should == [:piedra, :papel, :tijeras]
  end
  
  it "Debe existir una lista de jugadas posibles y quien gana" do
    @ppt_obj.ganas.should == {:piedra => :tijeras,
                              :papel => :piedra,
                              :tijeras => :papel,
                              }
  end
  
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
    @ppt_obj.obtener_humano.should == @ppt_obj.player_throw
  end
  
  it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
    @ppt_obj.obtener_maquina.should == @ppt_obj.computer_throw
  end
  
  it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
   @ppt_obj.juego_maquina.should == (@ppt_obj.ganas[@ppt_obj.computer_throw]) || (@ppt_obj.pierde[@ppt_obj.computer_throw]);
  end
 it"Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
  @ppt_obj.juego_maquina.should == @ppt_obj.ganas[@ppt_obj.computer_throw];
 end

end
