module TruncateExactFilter
  def truncate_exact(input, length = 1000)
    if input.length > length
      words = input.split(' ')
      truncated_text = ''
      word_count = 0
      words.each do |word|
        word_count += word.length
        break if word_count > length
        truncated_text += word + ' '
      end
      truncated_text.strip + '...'
    else
      input
    end
  end
end

Liquid::Template.register_filter(TruncateExactFilter)
