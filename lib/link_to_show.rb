module AlexSharp
  def link_to_show(model, opts = {}, html = {})
    opts[:condition]      ||= model.active?
    opts[:active_path]    ||= model
    opts[:inactive_path]  ||= [:admin, model]
    opts[:label]          ||= "View #{model.class.name}"
    opts[:condition] ? link_to(opts[:label], opts[:active_path], html) : 
                       link_to(opts[:label], opts[:inactive_path], html)
  end
end
