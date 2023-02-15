class TestArticleMailer < ApplicationMailer
    def test_mail_catcher
        @article = article
        mail(
            
        subject:  'Thanks for creating Author for our amazing app')
    end
end
