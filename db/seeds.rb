# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Rails.logger = Logger.new(STDOUT)

allergies = ["Penicillin", "Mould", "Shellfish", "Peanut", "Egg", "Dilantin", "None"]

medications = [
  "Acetaminophen",
  "Adderall",
  "Amitriptyline",
  "Amlodipine",
  "Amoxicillin",
  "Melatonin",
  "Meloxicam",
  "Metformin",
  "Methadone",
  "Methotrexate",
  "Metoprolol",
  "Wellbutrin",
  "Xanax",
  "Zubsolv",
  "None",
]

patients = (0..100).to_a.map do |_n|
  {
    full_name: Faker::Name.unique.name,
    age: Faker::Number.within(range: 1..99),
    weight: Faker::Number.decimal(l_digits: 2),
    allergies: allergies.sample,
    medications: medications.sample,
  }
end

Rails.logger.info("Inserting patient data............")

Patient.create(patients)

Rails.logger.info("Patient data inserted!")
