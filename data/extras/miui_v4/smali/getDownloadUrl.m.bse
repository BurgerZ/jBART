.method public getDownloadUrl(Ljava/lang/String;Z)Lmiui/resourcebrowser/controller/online/RequestUrl;
    .registers 10
 
    const/4 v6, 0x1
 
    new-instance v0, Lmiui/resourcebrowser/controller/online/RequestUrl;
 
    const-string v1, "http://cloud.romz.bz/thm/?file=%s"
 
    new-array v2, v6, [Ljava/lang/Object;
 
    const/4 v3, 0x0
 
    const-string v4, "?"
 
    const-string v5, "&"
 
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
 
    move-result-object v4
 
    aput-object v4, v2, v3
 
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 
    move-result-object v1
 
    sget-object v2, Lmiui/resourcebrowser/controller/online/RequestUrl$HostProxyType;->API_PROXY:Lmiui/resourcebrowser/controller/online/RequestUrl$HostProxyType;
 
    invoke-direct {v0, v1, v6, v2}, Lmiui/resourcebrowser/controller/online/RequestUrl;-><init>(Ljava/lang/String;ILmiui/resourcebrowser/controller/online/RequestUrl$HostProxyType;)V
 
    const-string v1, "downloadupdate"
 
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
 
    move-result-object v2
 
    invoke-virtual {v0, v1, v2}, Lmiui/resourcebrowser/controller/online/RequestUrl;->addParameter(Ljava/lang/String;Ljava/lang/String;)V
 
    return-object v0
.end method
