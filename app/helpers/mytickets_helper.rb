module MyticketsHelper
  def status_label(myticket)
    (myticket.status == 'Aberto') ?
      'success' :
      ((myticket.status == 'Aguardando') ?
        'warning' :
        (myticket.status == 'Finalizado') ?
          'default' :
        'danger')
  end
end
