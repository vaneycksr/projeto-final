# frozen_string_literal: true

# apos cada cenario vai tirar um screenshot
After do |scenario|
  # tirar espacos do nome do cenario
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')

  if scenario.failed?
    tirar_screenshot(scenario_name.downcase!, 'falhou')
  else
    tirar_screenshot(scenario_name.downcase!, 'passou')
  end
end
