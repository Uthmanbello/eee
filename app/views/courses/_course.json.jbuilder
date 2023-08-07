json.extract! course, :id, :code, :title, :units, :semester, :year, :option_id, :created_at, :updated_at
json.url course_url(course, format: :json)
