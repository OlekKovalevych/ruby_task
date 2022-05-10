# frozen_string_literal: true
class TicTakToe

  @@last_motion_even=true

  @@tic_tak_hash = { 1 => nil, 2 => nil, 3 => nil,
                     4 => nil, 5 => nil, 6 => nil,
                     7 => nil, 8 => nil, 9 => nil }

  def print_tic_tak_toe
    floor = 1
    print_string = String.new
    @@tic_tak_hash.each do |key, value|
      print_string << case value
                      when true
                        "x"
                      when false
                        "0"
                      else
                        "*"
                      end
      print_string << " " if (floor % 3).zero?
      floor += 1
    end
    puts print_string.split(" ")
  end


  def get_motion(key)
    @@tic_tak_hash[key] = @@last_motion_even
    @@last_motion_even=!@@last_motion_even
  end

  def check_win
    if @@tic_tak_hash[1]==@@tic_tak_hash[2]==@@tic_tak_hash[3] || @@tic_tak_hash[4]==@@tic_tak_hash[5]==@@tic_tak_hash[6]||
      @@tic_tak_hash[7]==@@tic_tak_hash[8]==@@tic_tak_hash[9]
    end
  end

end
