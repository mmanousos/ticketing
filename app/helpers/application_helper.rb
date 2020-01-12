module ApplicationHelper

  def status_options_for_select
    status_options = %w(new in-progress blocked fixed)
    status_options.map { |status| [status.capitalize, status] }
  end

  def projects_for_select
    Project.all.map {|p| [p.name, p.id] } 
  end
end
