Dado("que eu tenha acesso ao site tradersclub") do 
	@logar = Logar.new
	@validar = Validar.new
	@logar .load
	@login ="Fillipe100"
	@senha = "Fe363620"
	@logar.logar @login, @senha
	   
end                                                                             
                                                                                
Quando("realizar uma compra com cartao invalido") do                            
    @compra_nao_efetivada = Compra_nao_efetivada.new
    @nome = "Daniel dos Santos"
    @numero_cartao = "033567298"
    @data_expiracao = "1721"
    @codigo_seguranca = "456"
    @atendido_por = "Bruno Cubells"
    @valor = "2x R$ 999,95"
    @compra_nao_efetivada.compra_nao_efetivada @nome, @numero_cartao, @data_expiracao, @codigo_seguranca, @atendido_por, @valor 

end                                                                             
                                                                                
Entao("valido que o sistema rejeitara a compra") do 
	retorno = expect(page).to have_content 'Não foi possível processar o seu pagamento, verifique se os dados estão corretos.'
	retorno = retorno.to_s
	if retorno == 'true'
		puts'A validação da mensagem de compra não realizada cartao invalido '
	else
	puts ' A compra foi efetuada com sucesso'

	end                        
  end                                                                             
                                                                                