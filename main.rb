# coding:UTF-8

# ---------- REQUIRE MODULE ---------- #

require 'twitter'
require 'tweetstream'
require 'date'


# ---------- DEFINE CK/CS/AT/ATS ---------- #

# CK/CSの定義
ck = ''
cs = ''
# メイン垢のAccessToken/AccessTokenSecretの定義
at = ''
ats = ''
# リプライ垢のAccessToken/AccessTokenSecretの定義
rep_at = ''
rep_ats = ''

# ------------- AUTH TO TWITTER ------------- #

$host = Twitter::Client.new(
        :consumer_key		=> ck,
	:consumer_secret	=> cs,
	:oauth_token		=> at,
	:oauth_token_secret	=> ats
)

$reply = Twitter::Client.new(
	:consumer_key		=> ck,
	:consumer_secret	=> cs,
	:oauth_token		=> rep_at,
	:oauth_token_secret	=> rep_ats
)




# -------------------- STREAMING -------------------- #


TweetStream.configure do |config|
	config.consumer_key		= ck
	config.consumer_secret		= cs
	config.oauth_token		= at
	config.oauth_token_secret	= ats
	config.auth_method		= :oauth
end

client = TweetStream::Client.new

client.userstream do |status|
	

	puts "#{status.user.screen_name}: #{status.text}"
	str = status.text

  # -------------------- REPLY DEFINITION -------------------- #

  $gacha = ["\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　水　　玉　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟﾛﾛﾛﾛﾛﾛﾛﾛﾛﾛｗｗｗｗｗｗｗ\n\n＞　　横　　縞　　か　　な　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮ↓ﾛﾛﾛﾛﾛﾛﾛ↑ｗｗｗｗｗｗ\n\n＞　　星　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛｰﾝ↑ｗｗｗｗ\n\n＞　　銀　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛｰﾝ↑ｗｗｗｗ\n\n＞　　銀　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\nﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛﾝﾋﾟｮﾛﾛｰﾝ↑ｗｗｗｗ\n\n＞　　銀　　卵　　＜", 
"\nｶﾞﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗﾗｗｗｗｗｗｗｗｗｗｗｗｗ\n\nﾋﾟｮ↓ｺ↑！ｗ\n\nﾃﾝ!ｗﾃﾃﾃﾝﾃﾝ↑ﾃﾝﾃﾃﾃﾃﾃﾝ↓ﾃﾝ↑ﾃｰﾝ↑ｗ\n\n＞　　金　　玉　　＜", 
"\n友情ポイントが足りねぇんだよ出直して来いｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗ<(^o^)>┌┛’,;’;≡三 Σ･∴'、【#{status.user.screen_name}】", 
"\n友情ポイントが足りねぇんだよ出直して来いｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗ<(^o^)>┌┛’,;’;≡三 Σ･∴'、【#{status.user.screen_name}】"]

	# ------------ REACTION ------------ #
  
	if str =~ /@hogehoge/ && str =~ /(ガ|が)(チ|ち)(ャ|ゃ)/ then # hogehoge にはメイン垢のスクリーンネームに書き換え
		$reply.update("@#{status.user.screen_name} #{$gacha.sample}", in_reply_to_status_id: status.id)
	end

	if str =~ /ar working?/ && status.user.screen_name =~ /hogehoge/ then # hogehoge にはメイン垢のスクリーンネームに書き換え
		$reply.update("@#{status.user.screen_name} AutoReply Account working! #{DateTime.now}", in_reply_to_status_id: status.id)
	end
	
	if str =~ /main working?/ && status.user.screen_name =~ /hogehoge/ then # hogehoge にはメイン垢のスクリーンネームに書き換え
		$host.update("main.rb working! #{DateTime.now}", in_reply_to_status_id: status.id)
	end

end
