require "pry"
class Backer
  attr_reader :name
  attr_accessor :backed_projects, :backers

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    Project.backers << self
    binding.pry
    @backed_projects << project


  end
end
