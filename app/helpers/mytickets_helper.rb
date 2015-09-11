module MyticketsHelper
  def status_label(myticket)
    (myticket.status == 'waiting') ?
      'warning' :
      ((myticket.status == 'active') ?
        'success' :
        'default')
  end
end
