class Compra_nao_efetivada < SitePrism::Page	

	element :loja_menu, :css, '#sidebar-left > div.nav-pills__container.ps.ps--theme_default.ps--active-y > div.tradersclub-menu > ul > li:nth-child(4) > a > span'
	element :plano_curso, :css, '#cart > div.destaques > div:nth-child(2) > div > a > div.over'
	element :btn_cadastrar, :css,'#cart > div > div.col-md-4 > div.pricing > div > a'
	element :nome_impresso, :css,'#root > div > div.channel-view > div.container-fluid > div.inner-wrap.channel__wrap > div.row.main > div > div > div > form > div:nth-child(1) > div:nth-child(1) > div > input'
	element :numero_cartao, :xpath, '//*[@id="root"]/div/div[1]/div[3]/div[4]/div[2]/div/div/div/form/div[1]/div[2]/div/input'
	element :data_expiracao,:css, '#root > div > div.channel-view > div.container-fluid > div.inner-wrap.channel__wrap > div.row.main > div > div > div > form > div:nth-child(1) > div:nth-child(3) > div > input'
	element :codigo_seguranca,:css, '#root > div > div.channel-view > div.container-fluid > div.inner-wrap.channel__wrap > div.row.main > div > div > div > form > div:nth-child(1) > div:nth-child(4) > div > input'
	element :select_atendido_por,:css, '#root > div > div.channel-view > div.container-fluid > div.inner-wrap.channel__wrap > div.row.main > div > div > div > form > div.selectPlan > div:nth-child(1) > div > div > select'
	element :select_valor,:css, '#root > div > div.channel-view > div.container-fluid > div.inner-wrap.channel__wrap > div.row.main > div > div > div > form > div.selectPlan > div:nth-child(3) > div > div > select'
	element :btn_finalizar, :xpath, '//*[@id="login"]'

	def compra_nao_efetivada (nome,numero_card,data,codigo_s,atendido_por,valor)
		loja_menu.click
		plano_curso.click
		btn_cadastrar.click
		nome_impresso.set(nome)
		numero_cartao.set(numero_card)
		data_expiracao.set(data)
		codigo_seguranca.set(codigo_s)
		select_atendido_por.select(atendido_por)
		select_valor.select(valor)
		btn_finalizar.click
 	end

end