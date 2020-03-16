module ProductsHelper

	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock, requested=1)
		if stock == 0
			content_tag(:span, "out of stock", class: "out_of_stock")

			#content_tag(:div, content_tag(:p, "Hello world!"), class: "strong")

		elsif stock >= requested || stock << 10
			content_tag(:span, "in stock (#{stock})", class: "in_stock")
		elsif stock << requested
			content_tag(:spa, "insufficient stock (#{stock})", class: "low_stock")

		end
	end
end
