class StatsController < ApplicationController
  def logs
    all_logs = RestClient.get ENV['rest_client_url'],
           params: {
               :'begin'       => 'Sun, 16 Oct 2016 00:00:00 -0000',
               :'ascending'   => 'yes',
               :'limit'       =>  25, # feel free to increase this if you need more objects to test on the view
               :'pretty'      => 'yes',
           }

    parsed_log = JSON.parse(all_logs)

    logs = parsed_log['items']

    @opens_and_clicks = logs.select { |e| e['event'] == 'opened' || e['event'] == 'clicked' }
  end
end
