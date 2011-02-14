require 'fastercsv'
class CsvController < ApplicationController
	def import
	end

	def upload
		debugger
		FasterCSV.parse(params[:upload][:csv].tempfile) do |cells|
			@transaction = Transaction.new(
				:when => cells[0],
				:amount => cells[1],
				:description => cells[2],
				:total => cells[3]
				)
			@transaction.save
		end
		# While under development, just respond by rendering some in-line text.
		# Send back the request parameters in JSON (JavaScript Object Notation)
		# format, i.e. something reasonably easy to parse with the human eye.
		# render :text => params.to_json
		redirect_to transactions_path
	end

end
