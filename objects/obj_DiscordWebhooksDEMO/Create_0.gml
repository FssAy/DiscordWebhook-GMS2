webhook1 = discord_webhook("730000000000000001", "PYS*************************************************************7QH8")

discord_webhook_edit(webhook1, edit_content, dcw_noone)
discord_webhook_edit(webhook1, edit_username, "Vulco's Webhook")
discord_webhook_edit(webhook1, edit_avatar_url, "https://i.imgur.com/YlKAVA5.png")

discord_webhook_edit(webhook1, edit_embed_use, true)
discord_webhook_edit(webhook1, edit_embed_title, "That's my own title")
discord_webhook_edit(webhook1, edit_embed_description, string_hash_to_newline("And that's a __*description*__#in multiple lines!!"))
discord_webhook_edit(webhook1, edit_embed_color, 0xb52828)

discord_webhook_edit(webhook1, edit_embed_author_name, "Author - FssAy")
discord_webhook_edit(webhook1, edit_embed_author_iconUrl, "https://cdn.discordapp.com/avatars/701563061735129138/8dea766fcfd4cb02809ad59032d4eaa0.png")

discord_webhook_edit(webhook1, edit_embed_footer_text, "Made in GameMaker Studio 2")
discord_webhook_edit(webhook1, edit_embed_footer_iconUrl, "https://www.yoyogames.com/images/gms2_logo_512.png")

discord_webhook_edit(webhook1, edit_embed_thumbnail_url, "https://i.imgur.com/YlKAVA5.png")

discord_webhook_execute(webhook1)




