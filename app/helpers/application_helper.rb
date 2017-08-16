module ApplicationHelper

  def pvalue key, default = nil, root_key = :facets
    if params.blank? or params[root_key].blank?
      return default.present? ? default : ''
    end
    # return default if default.present? && params[root_key][key].blank?
    params[root_key][key]
  end

  def flash_class(level)
		case level
		when :notice then "alert alert-info"
		when :success then "alert alert-success"
		when :error then "alert alert-danger"
		when :alert then "alert alert-danger"
		end
	end

  def title(page_title)
    content_for :title, "#{page_title.to_s} | #{t('title')}"
  end

  def language_options any_lang = false
    options = []
    options << ["All", ""] if any_lang
    options << ["Ruby", "ruby"]
    options << ["Java", "java"]
    options << ["Objective C", "objective_c"]
    options << ["Javascript", "javascript"]
    options << ["Swift", "swift"]
    options << ["C#", "c#"]
    options << ["python", "python"]
    options << ["PHP", "php"]
    options << ["C++", "c++"]
    options << ["SQL", "sql"]
  end

end
