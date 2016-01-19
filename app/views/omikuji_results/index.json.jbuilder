json.array!(@omikuji_results) do |omikuji_result|
  json.extract! omikuji_result, :id, :omikuji, :result
  json.url omikuji_result_url(omikuji_result, format: :json)
end
