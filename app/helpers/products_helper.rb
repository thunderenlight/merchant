module ProductsHelper

	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock)
		if stock > 0
			content_tag(:span, "in stock (#{stock})", class: "in_stock")

			#content_tag(:div, content_tag(:p, "Hello world!"), class: "strong")

		else
			content_tag(:span, "out of stock", class "out_of_stock")
		end
	end
end
