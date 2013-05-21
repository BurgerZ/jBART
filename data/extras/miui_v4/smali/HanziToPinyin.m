.method public static formatCharToT9(C)C
    .locals 5
    .parameter "ch"

    .prologue
    const/16 v4, 0x410

    const/16 v3, 0x401

    const/16 v2, 0x41

    .line 94
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 95
    .local v0, sym:C
    if-lt v0, v2, :cond_0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 96
    sget-object v1, Lmiui/util/HanziToPinyin;->sT9Map:[C

    sub-int v2, v0, v2

    aget-char v1, v1, v2

    .line 104
    :goto_0
    return v1

    .line 97
    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    move v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    if-eq v0, v3, :cond_2

    if-lt v0, v4, :cond_4

    const/16 v1, 0x42f

    if-gt v0, v1, :cond_4

    .line 100
    :cond_2
    if-ne v0, v3, :cond_3

    const/16 v1, 0x415

    move v0, v1

    .line 101
    :cond_3
    sub-int v1, v0, v4

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    goto :goto_0

    .line 104
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method