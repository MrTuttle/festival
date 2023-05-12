if @perform.persisted?
  json.form render(partial: "performs/form", formats: :html, locals: {spectacle: @spectacle, perform: Perform.new})
  json.inserted_item render(partial: "spectacles/perform", formats: :html, locals: {perform: @perform})
else
  json.form render(partial: "performs/form", formats: :html, locals: {spectacle: @spectacle, perform: @perform})
end
