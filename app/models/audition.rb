class Audition < ActiveRecord::Base
  belongs_to :roll
  
  def call_back
    self.update(hired: true)
  end
end