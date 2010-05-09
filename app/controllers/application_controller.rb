# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  require 'htmldoc'

  def render_to_pdf(options = nil)
    require 'prawn'
    Prawn::Document.generate("test_prawn.pdf") do
      font "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf"
      text "this is a test " * 100
    end

    f = File.new('test_prawn.pdf');
    #send_data f.to_s,  :disposition => 'inline'
    send_file "test_prawn.pdf"#logger.info "in render";
    #data = "<head>jfbvakjbf</head><body>render_to_string(options)</body>"
    #pdf = PDF::HTMLDoc.new
    #pdf.set_option :bodycolor, :white
    #pdf.set_option :toc, false
    #pdf.set_option :portrait, true
    #pdf.set_option :links, false
    #pdf.set_option :webpage, true
    #pdf.set_option :left, '2cm'
    #pdf.set_option :right, '2cm'
    #pdf << data
    #pdf.generate
    #render :nothing=>true;
  end
   def pdf_labels(line1, line2, line3, line4)
     require 'prawn/core'
     require 'prawn/layout'
     avery_5160_margin = 16
     Prawn::Document.generate 'labels.pdf',
     :left_margin => avery_5160_margin,
     :right_margin => avery_5160_margin,
     :top_margin => 2,
     :bottom_margin =>2  do |p|
       p.define_grid(:columns => 2, :rows=>5, :column_gutter =>10, :row_gutter=>10)
       p.grid.rows.times do |i|
         p.grid.columns.times do |j|
           b = p.grid(i,j)
           p.bounding_box b.top_left, :width=>b.width-16, :height=>b.height do
             p.indent(4) do
               p.move_down 70
               p.fill_color "397D02"
               #p.bounding_box(30, 0, :width => 75, :height=> 75) do
               #      image("public/images/swuw.jpg", :at => [0,0], :width => p.bounds)
               #end

               p.image "public/images/swuw.jpg", :at => [b.top_left[0],b.top_left[1]], :height=>70, :width=>70, :position=>:center, :align=>:left;
               p.text "#{line2}", :align=>:center, :color=>:green
               p.text "#{line3}", :align=>:center
               p.text "#{line4}", :align=>:center
               p.text "#{line4}", :align=>:center
             end
             p.stroke {p.rectangle(p.bounds.top_left, b.width-8, b.height)}
             #p.stroke {p.rectangle(p.bounds.top_left, b.width, b.height)}
             end
           end
         end
     end

    # f = File.new('labels.pdf');
    #send_data f.to_s,  :disposition => 'inline'
    send_file "labels.pdf"#logger.info "in render";
    end
   def pdf_card(line1, line2, line3, line4)
    require 'prawn'
    l1 = "#{line1} jkdfbkajeflj   #{line1}";
    Prawn::Document.generate("test_prawn.pdf") do
      font "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf"
      #:left_margin => avery_5160_margin,
      #:right_margin => avery_5160_margin
      move_down(50)
      @attendee = Attendee.new;
      @attendee.first_name = line2;
      @attendee.last_name = line3;
      @attendee.title = line4;
      @attendee.phone = "vubjnkm"
      name = "#{@attendee.first_name}, #{@attendee.last_name}";


      text "#{@attendee.first_name}                     #{@attendee.first_name}";
      text "#{@attendee.first_name} #{@attendee.last_name}" , :size => 16
      text "#{@attendee.title}" , :size => 12
      text "#{@attendee.phone}" , :size => 12


      text "#{@attendee.first_name} #{@attendee.last_name}" , :size => 16, :align=>:right
      text "#{@attendee.title}" , :size => 12
      text "#{@attendee.phone}"

      text "#{@attendee.first_name} #{@attendee.last_name}" , :size => 16
      text "#{@attendee.title}" , :size => 12
      text "#{@attendee.phone}"

      text "#{@attendee.first_name} #{@attendee.last_name}" , :size => 16
      text "#{@attendee.title}" , :size => 12
      text "#{@attendee.phone}"

      text "#{@attendee.first_name} #{@attendee.last_name}" , :size => 16
      text "#{@attendee.title}" , :size => 12
      text "#{@attendee.phone}"
  

    end

    f = File.new('test_prawn.pdf');
    #send_data f.to_s,  :disposition => 'inline'
    send_file "test_prawn.pdf"#logger.info "in render";
    #data = "<head>jfbvakjbf</head><body>render_to_string(options)</body>"
    #pdf = PDF::HTMLDoc.new
    #pdf.set_option :bodycolor, :white
    #pdf.set_option :toc, false
    #pdf.set_option :portrait, true
    #pdf.set_option :links, false
    #pdf.set_option :webpage, true
    #pdf.set_option :left, '2cm'
    #pdf.set_option :right, '2cm'
    #pdf << data
    #pdf.generate
    #render :nothing=>true;
  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
