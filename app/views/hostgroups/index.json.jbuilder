json.array!(@hostgroups) do |hostgroup|
  json.extract! hostgroup, :id, :hostgroup_name, :alias, :members, :hostgroup_members, :note
  json.url hostgroup_url(hostgroup, format: :json)
end
