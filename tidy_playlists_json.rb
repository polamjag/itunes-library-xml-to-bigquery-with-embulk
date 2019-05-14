require 'json'

j = JSON.parse(STDIN.read)

j.each do |playlist|
    ["Smart Criteria", "Smart Info"].each do |k|
        if playlist[k]
            playlist[k].gsub!(/[\s]/m, '')
        end
    end

    if playlist["Playlist Items"]
        playlist["Playlist Items"].map! do |hash|
            { track_id: hash["Track ID"] }
        end
    end

    puts JSON.dump(playlist)
end
