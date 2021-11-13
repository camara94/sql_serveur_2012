EXEC sp_addmessage @msgnum=57778,
@severity=19,
@msgtext='Log transaction FULL',
@lang='us_english'

EXEC sp_addmessage @msgnum=57778,
@severity=19,
@msgtext='Journal de transaction COMPLET',
@lang='French'

SELECT * FROM sysmessages WHERE error=57778
