require 'rails_helper'

RSpec.describe Student, type: :model do
  let!(:student) { Student.new(first_name: 'Dwayne', last_name: 'Johnson', grade: 99) }

  describe '#first_name' do
    it 'returns the student\'s first name' do
      expect(student.first_name).to eq('Dwayne')
    end
  end

  describe '#last_name' do
    it 'returns the student\'s last name' do
      expect(student.last_name).to eq('Johnson')
    end
  end

  describe '#grade' do
    it 'returns the student\'s grade' do
      expect(student.grade).to eq(99)
    end
  end

  describe '#to_s' do
    it 'has a #to_s method that returns the student\'s full name' do
      expect(student.to_s).to eq('Dwayne Johnson')
    end
  end
end

it 'returns the second student' do
  get "/students/#{second_student.id}"

  expect(response.body).to include_json({
    id: a_kind_of(Integer),
    first_name: 'Idris', 
    last_name: 'Elba', 
    grade: 105
  })
end
end

describe "GET /students" do
it 'returns an array of all students' do
  get '/students'

  expect(response.body).to include_json([
    { first_name: 'Dwayne', last_name: 'Johnson', grade: 99 },
    { first_name: 'Idris', last_name: 'Elba', grade: 105 },
    { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 },
    { first_name: 'Jason', last_name: 'Statham', grade: 70 }
  ])
end

context 'with query params' do
  it 'returns students whose first or last name matches the query' do
    get '/students?name=kirby'

    expect(response.body).to include_json([
      { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 }
    ])
  end
end
end

end
