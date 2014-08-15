.method protected getFragmentTabs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;>;"
    invoke-virtual {p0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->hasPageData()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mResContext:Lmiui/resourcebrowser/ResourceContext;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lmiui/resourcebrowser/activity/ResourceTabActivity;->mPageGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/resourcebrowser/model/PageGroup;

    .line 173
    .local v0, "group":Lmiui/resourcebrowser/model/PageGroup;
    invoke-virtual {p0, v0}, Lmiui/resourcebrowser/activity/ResourceTabActivity;->buildFragmentInfo(Lmiui/resourcebrowser/model/PageGroup;)Lmiui/resourcebrowser/activity/BaseTabActivity$FragmentInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0    # "group":Lmiui/resourcebrowser/model/PageGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 177
    return-object v2
.end method