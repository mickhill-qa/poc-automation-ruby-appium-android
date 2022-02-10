### Global ###
Before do
    $driver.start_driver
end

After do |scenario|
  scenario_name = scenario.name.gsub(/[^\w\-]/, '_')

  if scenario.failed?
    screenshot_erro scenario_name.downcase!
  end

  sleep 3
  $driver.driver_quit
end


### Tag ###
# Before '@pesquisaUndefined' do
#     log 'Apenas no INICIO desse Cenarios'
# end

# After '@pesquisaUndefined' do
#     log 'Apenas no FIM desse Cenarios'
# end
