FactoryGirl.define do
  factory :scholar do
    first_name "Johnny"
    last_name "Diliman"
    age "25"
    description "akosipc"
    school "School for Nerds"
    status "Active"
    amount  5000

    after(:create) do |user|
      scholar.pledges.create(amount: 500, email: 'akosipc@gmail.com')
      scholar.pledges.create(amount: 500, email: 'akosipc@gmail.com')
    end

  end

  factory :funded_scholar, class: Scholar do
    first_name "Ace"
    last_name "Dimasuhid"
    age "25"
    description "adimasuhid"
    school "School for Nerds"
    status "Funded"
    amount 5000
  end
end
