module ApplicationHelper

  def status_options_for_select
    status_options = %w(new in-progress blocked fixed)
    status_options.map { |status| [status.capitalize, status] }
  end

  def projects_for_select
    Project.all.map {|p| [p.name, p.id] } 
  end

  def open_tickets_count(tickets) 
    tickets.select { |t| t.status != 'fixed'}.size
  end

  def all_tickets_count(tickets) 
    tickets.size
  end
end
