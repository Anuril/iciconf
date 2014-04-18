json.array!(@hosts) do |host|
  json.extract! host, :id, :hostname, :alias, :display_name, :address, :parents, :hostgroups, :check_command, :check_period, :notification_interval, :notification_period
  json.url host_url(host, format: :json)
end
