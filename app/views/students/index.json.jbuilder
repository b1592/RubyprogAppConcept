json.array!(@students) do |student|
  json.extract! student, :id, :name, :group
  json.url student_url(student, format: :json)
end
