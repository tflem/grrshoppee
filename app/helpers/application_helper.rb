module ApplicationHelper
  def show_title(*items)
    unless items.empty?
      content_for :show_title do
        (items << "Grr . . . Shoppee").join(" - ")
      end
    end
  end
end
