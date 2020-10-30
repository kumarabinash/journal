json.array! @tags do |tag|
  # json.extract! tag, :id, :name
  json.id tag.name
  json.text tag.name
end