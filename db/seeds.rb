# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user seed
users = [
       {:username => 'jiajia', :password => 'jiajia', :password_confirmation => 'jiajia',
       :email => '111@gmail.com', :first_name => 'jiajia', :last_name => 'hou'}
       ]
       
users.each do |user|
  User.create!(user)
end

# access email seed
accesses = [{:email => 'tonywang@tamu.edu'},
          {:email => 'lihao@tamu.edu'}]

accesses.each do |access|
  Access.create!(access)
end

#donor seed
donors = [
            {:title => 'mr.', :first_name => 'albert', :last_name => 'linkoln', :company => 'apple', :organization => 'ptsd'},
            {:title => 'mrs.', :first_name => 'sophia', :last_name => 'elizabeth', :company => 'google', :organization => 'dso'},
            {:title => 'mr', :first_name => 'albert', :last_name => 'zhang', :company => 'linkendin', :organization => 'ptsd'},
            {:title => 'mr.', :first_name => 'sam', :last_name => 'smith', :company => 'apple', :organization => 'ptsd'},
            {:title => 'mr.', :first_name => 'johnny', :last_name => 'walker'},
            {:title => 'mrs.', :first_name => 'michelle',:last_name => 'glanger'}
          ]

contact_people = [
          {:title => 'mr.', :first_name => 'peterson', :last_name => 'crab', :organization_id => '1'},
          {:title => 'mrs.', :first_name => 'sophia', :last_name => 'elizabeth', :organization_id => '2'}
          ]

organizations = [
          {:name => 'golden lion'},
          {:name => 'org1'},
          {:name => 'org2'},
          {:name => 'org3'},
          {:name => 'org4'},
          {:name => 'golden sheep'},
          {:name => 'golden cow'},
          {:name => 'golden tiger'},
          {:name => 'silver fox'},
          {:name => 'silver sheep'},
          {:name => 'silver tiger'},
          {:name => 'silver cow'}
          ]
  
contacts = [
          {:contact_date => '2016-04-01', :followup_date => '2016-04-22', :donor_id => '1', :narrative => 'Discussion about event in May'},
          {:contact_date => '2016-04-02', :followup_date => '2016-04-23', :donor_id => '2', :narrative => 'Funding raising for April'},
          {:contact_date => '2016-03-31', :followup_date => '2016-04-21', :contact_person_id => '1', :narrative => 'Discussion about next donation from Golden Lion'},
          {:contact_date => '2016-03-31', :followup_date => '2016-04-26', :contact_person_id => '2', :narrative => 'Financial Report to Silver Fox'},
          ]
          
          
reports = [  
            {
             :title => '2014 donation by amount',
             :description => 'amount between 0 to 500, the whole 2014',
             :last_run => '2016-04-01',
             :created_by => 'jojo',
             :created_at => '2015-01-24',
             :last_modified_by => 'ste',
             :last_modified_at => '2016-02-18'
            },
            {
             :title => '2014 donation by city',
             :description => 'city: Houston, the whole 2014',
             :last_run => '2016-03-01',
             :created_by => 'ste',
             :created_at => '2015-01-19',
             :last_modified_by => 'jojo',
             :last_modified_at => '2015-02-18'
            },
            {
             :title => '2013 donation by city',
             :description => 'city: College Station, the whole 2013',
             :last_run => '2015-03-01',
             :created_by => 'ste',
             :created_at => '2014-01-19',
             :last_modified_by => 'jojo',
             :last_modified_at => '2015-02-18'
            }
          ]

donors.each do |donor|
  Donor.create!(donor)
end

organizations.each do |organization|
  Organization.create!(organization)
end

contact_people.each do |contact_person|
  ContactPerson.create!(contact_person)
end

contacts.each do |contact|
  Contact.create!(contact)
end

reports.each do |report|
  Report.create!(report)
end