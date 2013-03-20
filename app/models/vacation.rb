class Vacation < ActiveRecord::Base
  attr_accessible :created_at, :ending_at, :modified_at, :starting_at, :status, :reason,:days,:user_id
  belongs_to :user
  def define_status
    if Time.now<self.starting_at
      self.status="pending"
    elsif Time.now>=self.starting_at && Time.now<self.ending_at
      self.status="underway"
    elsif Time.now>=self.ending_at
      self.status="finished"
    end
    
  end
end
