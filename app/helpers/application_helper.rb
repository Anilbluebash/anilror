module ApplicationHelper

	def time_date_format(date)
		return date.strftime("%d %B %Y %M : %S")
	end
end
