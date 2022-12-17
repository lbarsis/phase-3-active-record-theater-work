class Roll < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map{|a| a.actor}
  end

  def locations
    auditions.map{|a| a.actor}
  end

  def lead
    # my method is below:
    # auditions.filter{|a| a.hired = true}.length == 0 ? "No actor has been hired for this role" : auditions.filter{|a| a.hired = true}.first

    # correct solution below:
    auditions.find_by(hired: true) || 'no actor has been hired for this role'
  end

  def understudy
    # my method is below:
    # auditions.filter{|a| a.hired = true}.length == 0 ? "No actor has been hired for this role" : auditions.filter{|a| a.hired = true}.second

    # Correct solution below:
    auditions.where(hired: true).second || 'no actor has been hired for this role'
  end

end