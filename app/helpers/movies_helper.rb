# frozen_string_literal: true

module MoviesHelper
  def total_gross(movie)
    if movie.flop?
      'Flop!'
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on.year
  end

  # should be deleted but it will remain for learning purpose
  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:p, "No reviews", class: "strong")
    else
      content_tag(:p, "*" * movie.average_stars.round)
    end
  end

  def nav_link_to(text, url)
    if current_page?(url)
      link_to(text, url, class: 'active')
    else
      link_to(text, url)
    end
  end
end
