json.extract! drug, :id, :name, :target_alignment, :side_effect, :created_at, :updated_at
json.url drug_url(drug, format: :json)
