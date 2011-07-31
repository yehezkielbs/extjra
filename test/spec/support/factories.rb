Factory.define :customer do |f|
  f.sequence(:name) { |n| "Name #{n}" }
  f.sequence(:address) { |n| "Address #{n}" }
  f.sequence(:description) { |n| "Description #{n}" }
end