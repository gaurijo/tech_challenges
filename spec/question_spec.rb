
require 'pry'
require './lib/question'

RSpec.describe WeeklyScheduler do
  describe ".call/2" do
    subject { WeeklyScheduler.(therapists: therapists, members: members) }

    context "with one therapist covering all days" do
      let(:therapists) { [ { name: :freud, open_slots: [1,2,3,4,5] } ] }
      let(:members) do
        [
          {name: :nietzsche, preference: :any }, #friday
          {name: :marx, preference: [:monday, :tuesday] }, #tuesday
          {name: :heidegger, preference: [:monday] }, #monday
          {name: :singer, preference: [:not_friday] }, #thursday
          {name: :kant, preference: :friday }, #not scheduled 
          {name: :hegel, preference: [:monday, :wednesday, :friday] }, #wednesday
        ]
      end
      it "matches for members on each day" do
        actual = subject
        expected = {
          monday: [ { therapist: :freud, member: :heidegger } ],
          tuesday: [ { therapist: :freud, member: :marx } ], # or hegel
          wednesday: [ { therapist: :freud, member: :hegel } ], # or marx
          thursday: [ { therapist: :freud, member: :singer } ],
          friday: [ { therapist: :freud, member: :nietzsche } ],
        }

        aggregate_failures do
          [:monday, :tuesday, :wednesday, :thursday, :friday].each do |day|
            expect(actual[day]).to eq(expected[day])
          end
        end
      end
    end

    context "with many therapists covering a few days" do
      let(:therapists) do
        [
          { name: :jung, open_slots: [1] },
          { name: :perls, open_slots: [1, 2] },
          { name: :adler, open_slots: [2] },
          { name: :gottman, open_slots: [4] },
          { name: :whitaker, open_slots: [] },
        ]
      end
      let(:members) do
        [
          {name: :socrates, preference: :monday }, # monday
          {name: :yacob, preference: [:monday, :tuesday] }, # tuesday
          {name: :sartre, preference: :tuesday }, # tuesday
          {name: :de_beauvoir, preference: :thursday }, # thursday
        ]
      end
      it "matches for members with overlap" do
        actual = subject
        expected = {
          monday: [ { therapist: :jung, member: :socrates } ],
          tuesday: [ { therapist: :perls, member: :yacob }, { therapist: :adler, member: :sartre } ],
          thursday: [ { therapist: :gottman, member: :de_beauvoir } ],
        }
        aggregate_failures do
          [:monday, :tuesday, :thursday].each do |day|
            expect(actual[day]).to eq(expected[day])
          end
        end
      end
    end
  end
end
