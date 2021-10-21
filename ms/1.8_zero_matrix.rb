def zero_matrix(matrix, row, column)
  if matrix[row][column].zero?
    move_next_position(matrix, row, column)
    column_to_zero(matrix, column)
    row_to_zero(matrix, row)
  else
    move_next_position(matrix, row, column)
  end
end

def move_next_position(matrix, row, column)
  p "row #{row}"
  p "column #{column}"
  if matrix[row].size - 1 > column
    zero_matrix(matrix, row, (column + 1))
  elsif matrix.size - 1 > row
    zero_matrix(matrix, (row + 1), 0)
  else
    return
  end
end

def column_to_zero(matrix, column)
  p "#{column} is zeros column"
  matrix.each do |x|
    x[column] = 0
  end
end

def row_to_zero(matrix, row)
  p "#{row} is zeros row"
  matrix[row].each_with_index do |x, i|
    matrix[row][i] = 0
  end
end

matrix = [
  [1, 1, 0],
  [1, 1, 1],
  [1, 1, 0]
]

zero_matrix(matrix, 0, 0)
p matrix
