class Jekyll::Post

  UPCASED = ['iis', 'ssl', 'ip']

  def titleized_slug
    self.slug.split(/[-_]/)
      .map(&:downcase).map.with_index do |word, index|
        if UPCASED.include?(word)
          word.upcase
        else
          if index == 0
            word.capitalize
          else
            word
          end
        end
      end
      .join(' ')
  end
end
