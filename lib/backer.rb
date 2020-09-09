require "pry"
class Backer
  attr_reader :name, :backed_projects
  attr_accessor :add_backer

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    Project.add_backer(self)
  end
end
