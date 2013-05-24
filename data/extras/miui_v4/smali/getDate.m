.method public getDate()Ljava/lang/String;
    .registers 5
	
	const-string v2, ""
	
	iget-object v3, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;
	
	const v4, 0x7f0c007a

	invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

	move-result-object v1

	invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

	move-result-wide v3

	invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

	move-result-object v3

	invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

	move-result-object v0

	return-object v0
.end method