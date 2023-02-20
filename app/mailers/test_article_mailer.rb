class TestArticleMailer < ApplicationMailer
    def test_mail_catcher
        @article = test_article
        mail(
         to:  "amirali@gmail.com",
        subject:  'Thanks for creating Author for our amazing app'
        )
    end
end
