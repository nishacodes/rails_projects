talents = Talent.create([{name:"acrobat"},{name:"contortionist"},{name:"clown"},{name:"juggler"}, {name:"freak"}])

amoebas = Amoeba.create([{name: 'Nisha', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Nikki', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Sterling', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Anisha', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Sarah', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Sara', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Armando', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Amine', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Gus', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Blake', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Pooja', talent_id: talents.sample.id, generation: 1 },
                         {name: 'Kate', talent_id: talents.sample.id, generation: 1 }
                          ])

acts = Act.create([{name:"Flying Saucers" , date: Date.today, time: Time.now},
                   {name:"The Trapeze" , date: Date.today, time: Time.now},
                   {name:"Aerial Hoops" , date: Date.today, time: Time.now},
                   {name:"Acrobatic Amoebas" , date: Date.today, time: Time.now},
                   {name:"Russian Swing" , date: Date.today, time: Time.now},
                   {name:"Fire Dancing" , date: Date.today, time: Time.now},
                   {name:"Walking on Water" , date: Date.today, time: Time.now}
                   ])

20.times do 
  Amoeba_Act.create([{amoeba_id: amoebas.sample.id, act_id: acts.sample.id}])
end