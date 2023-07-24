# Seed your database here
# For example, create doctors, patients, appointments, etc.

# Seed doctors
doctor1 = Doctor.create(name: "Dr. John Smith", specialization: "Cardiologist", contact_info: "doctor1@example.com")
doctor2 = Doctor.create(name: "Dr. Jane Doe", specialization: "Pediatrician", contact_info: "doctor2@example.com")
doctor3 = Doctor.create(name: "Dr. Michael Lee", specialization: "Dermatologist", contact_info: "doctor3@example.com")
doctor4 = Doctor.create(name: "Dr. Emily Johnson", specialization: "Gynecologist", contact_info: "doctor4@example.com")
doctor5 = Doctor.create(name: "Dr. David Kim", specialization: "Neurologist", contact_info: "doctor5@example.com")

# Seed departments
department1 = Department.create(name: "Cardiology", description: "Department for heart-related conditions")
department2 = Department.create(name: "Pediatrics", description: "Department for children's healthcare")
department3 = Department.create(name: "Dermatology", description: "Department for skin-related conditions")
department4 = Department.create(name: "Gynecology", description: "Department for women's health and reproductive care")
department5 = Department.create(name: "Neurology", description: "Department for neurological disorders and conditions")

# Seed categories
category1 = Category.create(name: "General Checkup", description: "Routine checkup and health assessment")
category2 = Category.create(name: "Lab Tests", description: "Laboratory tests and diagnostics")
category3 = Category.create(name: "X-Ray", description: "Radiological imaging")
category4 = Category.create(name: "Ultrasound", description: "Ultrasound imaging for diagnostics and pregnancy monitoring")
category5 = Category.create(name: "MRI", description: "Magnetic Resonance Imaging for detailed body scans")

# Seed patients
patient1 = Patient.create(name: "Alice Johnson", age: 30, gender: "Female", contact_info: "alice@example.com", medical_history: "No significant medical history", insurance_details: "Insurance Company A, Policy ID: 12345", category_id: category1.id)
patient2 = Patient.create(name: "Bob Williams", age: 45, gender: "Male", contact_info: "bob@example.com", medical_history: "Allergic to penicillin", insurance_details: "Insurance Company B, Policy ID: 67890", category_id: category2.id)
patient3 = Patient.create(name: "Eva Adams", age: 50, gender: "Female", contact_info: "eva@example.com", medical_history: "Hypertension", insurance_details: "Insurance Company C, Policy ID: 54321", category_id: category3.id)
patient4 = Patient.create(name: "John Doe", age: 55, gender: "Male", contact_info: "john@example.com", medical_history: "Diabetes", insurance_details: "Insurance Company D, Policy ID: 13579", category_id: category4.id)
patient5 = Patient.create(name: "Sarah Johnson", age: 28, gender: "Female", contact_info: "sarah@example.com", medical_history: "Asthma", insurance_details: "Insurance Company E, Policy ID: 24680", category_id: category5.id)

# Seed appointments
appointment1 = Appointment.create(appointment_date: Date.today + 7, start_time: "10:00 AM", end_time: "11:00 AM", doctor: doctor1, patient: patient1)
appointment2 = Appointment.create(appointment_date: Date.today + 5, start_time: "2:30 PM", end_time: "3:30 PM", doctor: doctor2, patient: patient2)
appointment3 = Appointment.create(appointment_date: Date.today + 10, start_time: "11:30 AM", end_time: "12:30 PM", doctor: doctor3, patient: patient3)
appointment4 = Appointment.create(appointment_date: Date.today + 3, start_time: "9:00 AM", end_time: "10:00 AM", doctor: doctor4, patient: patient4)
appointment5 = Appointment.create(appointment_date: Date.today + 8, start_time: "1:00 PM", end_time: "2:00 PM", doctor: doctor5, patient: patient5)

# Seed invoices
invoice1 = Invoice.create(invoice_date: Date.today + 30, total_amount: 150.0, due_date: Date.today + 60, patient: patient1, appointment_id: appointment1.id)
invoice2 = Invoice.create(invoice_date: Date.today + 25, total_amount: 200.0, due_date: Date.today + 55, patient: patient2, appointment_id: appointment2.id)
invoice3 = Invoice.create(invoice_date: Date.today + 20, total_amount: 100.0, due_date: Date.today + 50, patient: patient3, appointment_id: appointment3.id)
invoice4 = Invoice.create(invoice_date: Date.today + 15, total_amount: 300.0, due_date: Date.today + 45, patient: patient4, appointment_id: appointment4.id)
invoice5 = Invoice.create(invoice_date: Date.today + 12, total_amount: 400.0, due_date: Date.today + 42, patient: patient5, appointment_id: appointment5.id)

puts "✅ Done seeding!"
