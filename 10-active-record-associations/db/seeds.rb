Doctor.destroy_all
Hospital.destroy_all
# Patient.destroy_all

sacred_heart = Hospital.find_or_create_by(name: "Sacred Heart")

jd = Doctor.find_or_create_by(name: "John Dorian")
turk = Doctor.find_or_create_by(name: "Chris Turk")
elliot = Doctor.find_or_create_by(name: "Elliot Reid")