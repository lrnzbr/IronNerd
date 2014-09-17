# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create :email => 'mary@example.com', :password => 'guessit'
MuscleGroup.create [{:name => 'Abdominal'},
                 {:name => 'Biceps'},
                 {:name => 'Deltoids'},
                 {:name => 'Erector Spinae'},
                 {:name => 'Gastrocnemius & Soleus'},
             {:name => 'Gluteus'},
         {:name => 'Hamstrings'},
     {:name => 'Latissimus Dorsi'},
 {:name => 'Rhomboids'},
{:name => 'Obliques'},
{:name => 'Pectorialis'},
{:name => 'Quadriceps'},
{:name => 'Trapezius'},
{:name => 'Triceps'}]


