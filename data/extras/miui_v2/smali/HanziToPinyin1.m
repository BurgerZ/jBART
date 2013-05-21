.method public static formatCharToT9(C)C
    .registers 6
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
    if-lt v0, v2, :cond_17

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_17

    .line 96
    sget-object v1, Lcom/android/internal/util/HanziToPinyin;->sT9Map:[C

    sub-int v2, v0, v2

    aget-char v1, v1, v2

    .line 104
    :goto_16
    return v1

    .line 97
    :cond_17
    const/16 v1, 0x30

    if-lt v0, v1, :cond_21

    const/16 v1, 0x39

    if-gt v0, v1, :cond_21

    move v1, v0

    .line 98
    goto :goto_16

    .line 99
    :cond_21
    if-eq v0, v3, :cond_29

    if-lt v0, v4, :cond_38

    const/16 v1, 0x42f

    if-gt v0, v1, :cond_38

    .line 100
    :cond_29
    if-ne v0, v3, :cond_2e

    const/16 v1, 0x415

    move v0, v1

    .line 101
    :cond_2e
    sub-int v1, v0, v4

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    goto :goto_16

    .line 104
    :cond_38
    const/4 v1, 0x0

    goto :goto_16
.end method