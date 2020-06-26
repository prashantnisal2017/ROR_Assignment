drugs_list = [
  [ "drug_1", "target_alignment_1","side_effect_1"],
  [ "drug_2", "target_alignment_2","side_effect_2"],
  [ "drug_3", "target_alignment_3","side_effect_3"],
]

drugs_list.each do |name, target_alignment, side_effect|
  Drug.create( name: name, target_alignment: target_alignment,side_effect: side_effect )
end

company_list = [
  "Indian National Drug Company Private Limited",
]

company_list.each do |name|
  Company.create( name: name)
end

doctor_list = [
  [ "Dr.Prashant", "Immunologists"],
  [ "Dr.Sandip", "Cardiologists"],
  [ "Dr.Aman", "Medicine Specialists"],
  [ "Dr.Rhushikesh", "Medicine Specialists"]
]

doctor_list.each do |name, specialization|
  Doctor.create( name: name,specialization: specialization)
end

clinic_list = [
  [ "Universal Body Clinic", "India", "Maharashtra", "pune"],
  [ "Gateway Healthcare", "India", "Maharashtra", "pune"],
  [ "WishyWave Hospital", "India", "Maharashtra", "pune"]
]

clinic_list.each do |name, country, state, city|
  Clinic.create( name: name, country: country, state: state, city: city )
end

patient_list = ["ram","sham", "sushmita", "nobita", "salman"]

patient_list.each do |name|
  Patient.create( name: name)
end

