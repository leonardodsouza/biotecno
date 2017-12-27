class EmailMailer < ActionMailer::Base
    default from: "no-reply@biotecno.com.br"

    def contato(contato, email)
        @contato = contato
        @email = email
        mail(to: @email.contato_01, cc: @email.contato_02, subject: 'Contato vindo do site')
    end
    def manutencao(manutencao, email)
        @manutencao = manutencao
        @email = email
        mail(to: @email.manutencao_01, cc: @email.manutencao_02, subject: 'Solicitação de manutenção')
    end
    def orcamento(orcamento, email)
        @orcamento = orcamento
        @email = email
        mail(to: @email.orcamento_01, cc: @email.orcamento_02, subject: 'Solicitação de orçamento')
    end
end
