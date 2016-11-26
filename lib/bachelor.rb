def get_first_name_of_season_winner(data, season)
 answer = ""
 data[season].each do |info|
   if info["status"] == "Winner"
     answer << info["name"]
   end
 end
 final = answer.split
 final[0]
end

def get_contestant_name(data, occupation)
 data.each do |season,info|
   info.each do |real_info|
     if real_info['occupation'] == occupation
       return real_info['name']
     end
   end
 end
end


def count_contestants_by_hometown(data, hometown)
 i = 0
 data.each do |season,info|
   info.each do |real_info|
     if real_info['hometown'] == hometown
       i+=1
     end
   end
 end
 i
end

def get_occupation(data, hometown)
 data.each do |season,info|
   info.each do |real_info|
     if real_info['hometown'] == hometown
       return real_info['occupation']
     end
   end
 end
end

def get_average_age_for_season(data, season)
 answer = []
 final = 0
 data[season].each do |info|
     answer << info["age"].to_f
     final += info["age"].to_f
 end
 final_answer = final/(answer.length)
 final_answer.round
end
