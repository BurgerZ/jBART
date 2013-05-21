.method private static generateT9Key(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "matchName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v6, t9Array:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    const-string v7, "0        1        2ABC\u0410\u0411\u0412\u0413 3DEF\u0414\u0415\u0401\u0416\u04174GHI\u0418\u0419\u041a\u041b 5JKL\u041c\u041d\u041e\u041f 6MNO\u0420\u0421\u0422\u04237PQRS\u0424\u0425\u0426\u0427 8TUV\u0428\u0429\u042b\u042a 9WXYZ\u042c\u042d\u042e\u042f"

    .line 576
    .local v7, t9letters:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 577
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 596
    new-instance v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    .line 597
    .local v8, t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    .line 598
    iput-object p0, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    .line 599
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    .line 600
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    return-object v4

    .line 579
    .end local v8           #t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_0
    const/16 v3, 0x20

    .line 580
    .local v3, num:C
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 581
    .local v5, sym:C
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 583
    .local v9, tmp:C
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 584
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 585
    .local v2, mpos:I
    if-ltz v2, :cond_2

    .line 586
    div-int/lit8 v10, v2, 0x9

    int-to-char v3, v10

    .line 587
    if-eqz v0, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    sub-int v10, v0, v11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 588
    :cond_1
    add-int/lit8 v10, v3, 0x41

    int-to-char v3, v10

    .line 594
    .end local v2           #mpos:I
    :cond_2
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .restart local v2       #mpos:I
    :cond_3
    add-int/lit8 v10, v3, 0x30

    int-to-char v3, v10

    goto :goto_1
.end method