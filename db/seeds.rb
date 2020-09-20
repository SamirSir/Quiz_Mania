# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"samir12@gmail.com", encrypted_password: "samir12", role: "teacher")
User.create(email:"alfred12@gmail.com", encrypted_password: "alfred12", role: "student")
User.create(email:"admin@gmail.com", encrypted_password: "admin1234", role: "admin")


Subject.create(name: "Computer Science")
Subject.create(name: "Language")
Subject.create(name: "Human Anatomy")

Question.create(phrase:"Who is the Father of computer?", options:"Adam Dmith,Lady Ada,Charles Babbage,Blaise Pascal", answer: "Charles Babbage", subject_id: 1)
Question.create(phrase:"Who is the first lady Programmer?", options:"Katarina,Martha Shrestha,Lady Ada,Geoigina Ada", answer: "Lady Ada", subject_id: 1)
Question.create(phrase:"What is the first calculating device?", options:"Calculator,Computer,Napier's Bones,Phone", answer: "Napier's Bones", subject_id: 1)
Question.create(phrase:"Which one is the Prgramming Language?", options:"Pascal,Newton,Tata,Tesla", answer: "Pascal", subject_id: 1)
Question.create(phrase:"Which one is called the Brain of Computer?", options:"Monitor,Keyboard,MotherBoard,CPU", answer: "CPU", subject_id: 1)
Question.create(phrase:"WWW stands for: ", options:"When Wheel Work,World Wise Wave,World Wide Wave,We Will Wipe", answer: "World Wide Wave", subject_id: 1)
Question.create(phrase:"Which one is Volataile Memory?", options:"CD,DVD,RAM,ROm", answer: "RAM", subject_id: 1)

Question.create(phrase:"Which Language is called Internastional Language?", options:"Nepali,Spanish,Indian,English", answer: "English", subject_id: 2)
Question.create(phrase:"What is the national language of Nepal?", options:"Maithili,Nepali,Hindi,Tamang", answer: "Nepali", subject_id: 2)
Question.create(phrase:"Which language is spoken the most in the world?", options:"English,Spanish,Chinese,Indian", answer: "Chinese", subject_id: 2)
# Question.create(phrase:"", options:"", answer: "", subject_id: 2)
# Question.create(phrase:"", options:"", answer: "", subject_id: 2)
# Question.create(phrase:"", options:"", answer: "", subject_id: 2)
# Question.create(phrase:"", options:"", answer: "", subject_id: 2)
# Question.create(phrase:"", options:"", answer: "", subject_id: 2)

Question.create(phrase:"How many bones are found in mature human body?", options:"210,207,270,211", answer: "207", subject_id: 3)
Question.create(phrase:"How many sense organ does a human have?", options:"5,6,7,4", answer: "5", subject_id: 3)
Question.create(phrase:"How many Vital organ does a human have?", options:"5,6,7,4", answer: "5", subject_id: 3)
Question.create(phrase:"Which acid is found in human stomach?", options:"dil.H<sub>2</sub>SO<sub>4</sub>,dil.HCl,conc.HCl,NH<sub>4</sub>Cl", answer: "dil.HCl", subject_id: 3)
Question.create(phrase:"Which one is vital organ?", options:"Eyes,Ears,Brain,Skin", answer: "Brain", subject_id: 3)
Question.create(phrase:"Spinal cord is part of ... ?", options:"Heart,Brain,Lungs,Kidney", answer: "Brain", subject_id: 3)
Question.create(phrase:"Which blood cell doesn't contain nucleus?", options:"RBC,WBC,Plasma,Platelets", answer: "RBC", subject_id: 3)
Question.create(phrase:"Which is the longest bone of human body?", options:"Femur,Radius,Ulna,Incus", answer: "Femur", subject_id: 3)
# Question.create(phrase:"", options:"", answer: "", subject_id: 3)
