require "csv"

  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
  
  memo_type = gets.chomp.to_s
  
  if memo_type == "1"
     #ファイル名入力
     puts "---作成したい拡張子を除いたファイル名を入力してください---"
     memo_type =gets.chomp.to_s
     CSV.open("#{memo_type}.csv", 'w') do |csv|
         #CSVにメモの内容を入力
         puts "---メモしたい内容を入力してください---"
         puts "---エンターで保存されます---"
        memo_type =gets.chomp.to_s
         csv << ["#{memo_type}"]
         
 
end
     
elsif  memo_type == "2" 
  
    
    puts "---編集したい拡張子を除いたファイル名を入力してください---"
     memo_type =gets.chomp.to_s
     
    CSV.open("#{memo_type}.csv", 'a') do |csv|
        puts "---メモ内容---"#追加aでファイルを開く
    filename = "#{memo_type}.csv"
    data = CSV.read(filename, headers: true)
    puts data
    puts "---追加したいメモを入力してください---"
    memo_type =gets.chomp.to_s
    csv << ["#{memo_type}"]
   puts  "---追加されました---"

end

else
    puts "実行したい数字を入力してください"
end