module WidgetsHelper

  # fontawesome.io for icon classes
  def icon(type, options = {})
    options.reverse_merge!(size: :normal)
    class_string = ""
    class_string << "fa fa-#{type}" + icon_size(options[:size])
    class_string << " fa-fw" if options[:fixed_width]
    content_tag :i, "", class: class_string
  end

  private

    def icon_size(size)
      fa_size = case size
                  when :large then "lg"
                  when :two then "2x"
                  when :three then "3x"
                  when :four then "4x"
                  when :five then "5x"
                  else ""
                end
      size != :normal ? " fa-" + fa_size : ""
    end

end
