class Contestant <ApplicationRecord
  validates_presence_of :name, :age, :hometown, :years_of_experience
  has_many :contestant_projects
  has_many :projects, through: :contestant_projects

  def project_names
    projects.map do |project|
      project.name
    end.join(", ")
  end

  def self.average_years_of_experience

    # contestants.sum{|contestant| contestant.years_of_experience}
    average(:years_of_experience)

  end
end
