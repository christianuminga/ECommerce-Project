AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'email@email.com', password: 'password', password_confirmation: 'password')

Category.create!([
  {name: "Agriculture, Food and Natural Resources"},
  {name: "Architecture and Construction"},
  {name: "Arts, Audio/Video Technology and Communications"},
  {name: "Business Management and Administration"},
  {name: "Education and Training"},
  {name: "Finance"},
  {name: "Government and Public Administration"},
  {name: "Health Science"},
  {name: "Hospitality and Tourism"},
  {name: "Human Services"},
  {name: "Information Technology"},
  {name: "Law, Public Safety, Corrections and Security"},
  {name: "Manufacturing"},
  {name: "Marketing, Sales and Service"},
  {name: "Science, Technology, Engineering and Mathematics"},
  {name: "Transportation, Distribution and Logistics"}
])
Page.create!([
  {title: "About Us", content: "HyperLearn is a company that researches, develops and sells quality Knowledge-Sticks", permalink: "about"},
  {title: "Contact Us", content: "You can contact us by calling 911123123", permalink: "contact"}
])
Product.create!([
  {name: "Chiropractor", description: "Assess, treat, and care for patients by manipulation of spine and musculoskeletal system. May provide spinal adjustment or address sacral or pelvic misalignment.", price: "85000.0", stock: 3, category_id: 8, image: "USB.jpg"},
  {name: "Actuary", description: "Analyze statistical data, such as mortality, accident, sickness, disability, and retirement rates and construct probability tables to forecast risk and liability for payment of future benefits. May ascertain insurance rates required and cash reserves necessary to ensure payment of future benefits.", price: "110000.0", stock: 4, category_id: 6, image: "USB.jpg"},
  {name: "Graphic Designers", description: "Design or create graphics to meet specific commercial or promotional needs, such as packaging, displays, or logos. May use a variety of mediums to achieve artistic or decorative effects.", price: "70000.0", stock: 3, category_id: 3, image: "USB.jpg"},
  {name: "Engine and Other Machine Assembler", description: "Construct, assemble, or rebuild machines, such as engines, turbines, and similar equipment used in such industries as construction, extraction, textiles, and paper manufacturing.", price: "43000.0", stock: 58, category_id: 13, image: "USB.jpg"},
  {name: "Firefighter", description: "Control and extinguish fires or respond to emergency situations where life, property, or the environment is at risk. Duties may include fire prevention, emergency medical service, hazardous material response, search and rescue, and disaster assistance.", price: "86000.0", stock: 23, category_id: 12, image: "USB.jpg"},
  {name: "Air Traffic Controller", description: "Control air traffic on and within vicinity of airport and movement of air traffic between altitude sectors and control centers according to established procedures and policies. Authorize, regulate, and control commercial airline flights according to government or company regulations to expedite and ensure flight safety.", price: "105000.0", stock: 67, category_id: 16, image: "USB.jpg"},
  {name: "Appraiser, Real Estate", description: "Appraise real property to determine its value for purchase, sales, investment, mortgage, or loan purposes.", price: "70000.0", stock: 34, category_id: 14, image: "USB.jpg"},
  {name: "Automotive Master Mechanics", description: "Repair automobiles, trucks, buses, and other vehicles. Master mechanics repair virtually any part on the vehicle.", price: "90000.0", stock: 5, category_id: 16, image: "USB.jpg"},
  {name: "Cytogenetic Technologists", description: "Analyze chromosomes found in biological specimens such as amniotic fluids, bone marrow, and blood to aid in the study, diagnosis, or treatment of genetic diseases.", price: "127000.0", stock: 12, category_id: 8, image: "USB.jpg"},
  {name: "Dermatologists", description: "Diagnose, treat, and help prevent diseases or other conditions of the skin.", price: "99000.0", stock: 5, category_id: 8, image: "USB.jpg"}
])
Province.create!([
  {name: "Alberta", pst: "0.0", gst: "0.05"},
  {name: "British Columbia", pst: "0.07", gst: "0.05"},
  {name: "Manitoba", pst: "0.08", gst: "0.05"},
  {name: "New Brunswick", pst: "0.15", gst: "0.0"},
  {name: "Newfoundland and Labrador", pst: "0.15", gst: "0.0"},
  {name: "Northwest Territories", pst: "0.0", gst: "0.05"},
  {name: "Nova Scotia", pst: "0.15", gst: "0.0"},
  {name: "Nunavut", pst: "0.05", gst: "0.0"},
  {name: "Ontario", pst: "0.13", gst: "0.0"},
  {name: "Prince Edward Island", pst: "0.15", gst: "0.0"},
  {name: "Quebec", pst: "0.09975", gst: "0.05"},
  {name: "Saskatchewan", pst: "0.06", gst: "0.05"},
  {name: "Yukon", pst: "0.0", gst: "0.05"}
])

