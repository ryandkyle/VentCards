pdf.font "Helvetica"
pdf.font.size = 13

@attendees.each do |a|
  pdf.text "Person: #{atitle}", :size => 16, :style => :bold, :spacing => 4
  pdf.start_new_page
end