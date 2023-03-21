# Welcome to the therapist matching app. Your job is to assign members to
# therapist appointment slots based on their preferences. When it comes to
# choosing who gets slotted when, you should pull from the user's preferences.
# The system should prefer the users with more permissive timeslots. Friday is
# the most often requested time slot, followed by Thursday, and so on leading
# back to Monday. Therapists with less slots should be given preference over
# those with more available slots. A solution which makes more matches is
# preferred to one which makes fewer
class WeeklyScheduler
  def self.call(therapists: [], members: [])
  end
end

# member matching example
therapists = [ { name: :freud, open_slots: [1,2,3,4,5,] }, ]
members = [ { name: :nietzsche, preference: :any }, #friday
  {name: :marx, preference: [:monday, :tuesday] }, #tuesday
  {name: :heidegger, preference: [:monday] }, #monday
  {name: :singer, preference: [:not_friday] }, #thursday
  {name: :kant, preference: :friday }, #not scheduled
  {name: :hegel, preference: [:monday, :wednesday, :friday] }, #wednesday
]

expected = {
  monday: [ { therapist: :freud, member: :heidegger } ],
  tuesday: [ { therapist: :freud, member: :marx } ], # or hegel
  wednesday: [ { therapist: :freud, member: :hegel } ], # or marx
  thursday: [ { therapist: :freud, member: :singer } ],
  friday: [ { therapist: :freud, member: :nietzsche } ],
}
# expect(WeeklyScheduler.(therapists: therapists, members: members)).to eq(expected)

puts "actual: #{WeeklyScheduler.(therapists: therapists, members: members)}"
puts "====" * 10
puts "expected: #{expected}"

# therapist matching example

therapists = [
  { name: :jung, open_slots: [1] },
  { name: :perls, open_slots: [1, 2] },
  { name: :adler, open_slots: [2] },
  { name: :gottman, open_slots: [4] },
  { name: :whitaker, open_slots: [] },
]
members = [{ name: :socrates, preference: :monday }, # monday
          {name: :yacob, preference: [:monday, :tuesday] }, # tuesday
          {name: :sartre, preference: :tuesday }, # tuesday
          {name: :de_beauvoir, preference: :thursday }, # thursday
]
expected = {
  monday: [ { therapist: :jung, member: :socrates } ],
  tuesday: [ { therapist: :perls, member: :yacob }, { therapist: :adler, member: :sartre } ],
  thursday: [ { therapist: :gottman, member: :de_beauvoir } ],
}
puts "====" * 10
puts "actual: #{WeeklyScheduler.(therapists: therapists, members: members)}"
puts "====" * 10
puts "expected: #{expected}"