# DiscordWebhook-GMS2
GameMaker Studio 2 extension for executing Discord webhooks. <br>
Build on IDE v2.2.5.481 <br>
[GMS 2.3Beta version](https://github.com/DmitrijVC/DiscordWebhook-GMS2.3Beta) <br>
[Marketplace](https://marketplace.yoyogames.com/publishers/4536/vulpes_coders)

This asset was made in mind of simpler executing of Discord webhooks and it is script-based only. <br>
It is holding all webhook data in the global map data structure named *discord_webhooks*. <br>
There is also an example of usage as an object in group *Demo* named *obj_DiscordWebhooksDEMO*. <br>
<br>

### Importing
You can open the project *(DiscordWebhooks.yyp)* or just import ready package *(com.Vulco.DiscordWebhook.yymp)*. <br>
All necessary things are placed in group named *Discord Webhook* and the demo ones in group *Demo*. <br>
<br>

### Usage
If you imported everything without errors you shold now have access to scripts like:

  - discord_webhook
  - discord_webhook_edit
  - discord_webhook_execute
  - discord_webhook_destroy
  
There are also scripts with name that starts with *_dcw*, they are necessary, but please ignore them. <br>
Example of Discord webhook: <br>
`https://canary.discordapp.com/api/webhooks/<ID>/<TOKEN>` <br>
<br>

**discord_webhook(arg1, arg2)** <br>
Adds a new entry in *discord_webhooks* map with all data about the webhook and returns unique ID named *webhook_opid*, which you need to edit or execute the webhook. <br>
arg1: ID of the webhook <br> 
arg2: TOKEN of the webhook <br> 
returns: webhook_opid <br>

**discord_webhook_edit(arg1, arg2, arg3)** <br>
Edits some data of a specific webhook. <br>
arg1: webhook_opid <br>
arg2: edit_type (macro from *_dcw_macros* or int 0-26) <br>
arg3: new value (can be string, bool or int. Depends of arg2) <br>

**discord_webhook_execute(arg1)** <br>
Executes a specific webhook. <br>
arg1: webhook_opid <br>
<br>

### Example
```cpp
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
```
<br>

### Macros
Edit type macros:
  - edit_url 
  - edit_id 
  - edit_token 
  - edit_content 
  - edit_username 
  - edit_avatar_url 
  - edit_embed_use 
  - edit_embed_title 
  - edit_embed_description 
  - edit_embed_url 
  - edit_embed_color 
  - edit_embed_author_name 
  - edit_embed_author_url 
  - edit_embed_author_iconUrl 
  - edit_embed_image_url 
  - edit_embed_image_width 
  - edit_embed_image_height 
  - edit_embed_footer_text 
  - edit_embed_footer_iconUrl 
  - edit_embed_thumbnail_url 
  - edit_embed_thumbnail_width 
  - edit_embed_thumbnail_height 
  - edit_embed_video_url 
  - edit_embed_video_width 
  - edit_embed_video_height 
  - edit_embed_provider_name 
  - edit_embed_provider_url 
  
Misc: 
  - dcw_noone



