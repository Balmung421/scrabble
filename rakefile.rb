task :default do
    FileList["./test/game_reader_test.rb", "./test/player_test.rb","./test/scrabble_test.rb", "./test/word_finder_test.rb", "./test/word_list_test.rb" ].each { |file| ruby file } 
end
