# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
SCHEDULER.every '3s', :first_in => 0 do |job|
  send_event('Deals', { value: rand(100) })
  send_event('Deals_month', { value: rand(10) })
end