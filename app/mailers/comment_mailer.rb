class CommentMailer < ApplicationMailer
  def notify_admin(comment)
    @comment = comment
    mail(
      to: 'jadiaz5@urbe.edu.ve',
      subject: 'Nuevo comentario',
      content_type: "text/html",
      body: "
        <html>
          <strong>
            Has recibido un comentario de #{comment.name} #{comment.lastname}}:
            #{comment.message}
          </strong>
        </html>
      "
    )
  end
end
