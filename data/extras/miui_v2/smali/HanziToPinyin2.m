.method public get(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 15
    .parameter "input"
    .parameter "filterInvalidChar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x3

    .line 448
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v7, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/HanziToPinyin$Token;>;"
    iget-boolean v8, p0, Lcom/android/internal/util/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v8, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 502
    :cond_12
    :goto_12
    return-object v7

    .line 453
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 454
    .local v2, inputLength:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 460
    .local v6, tokenType:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v2, :cond_a3

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 462
    .local v0, character:C
    if-ne v0, v11, :cond_40

    .line 463
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2f

    .line 464
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 466
    :cond_2f
    if-nez p2, :cond_3d

    .line 467
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, separator:Ljava/lang/String;
    new-instance v8, Lcom/android/internal/util/HanziToPinyin$Token;

    invoke-direct {v8, v10, v4, v4}, Lcom/android/internal/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v4           #separator:Ljava/lang/String;
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 470
    :cond_40
    const/16 v8, 0x100

    if-lt v0, v8, :cond_54

    const/16 v8, 0x401

    if-eq v0, v8, :cond_54

    const/16 v8, 0x451

    if-eq v0, v8, :cond_54

    const/16 v8, 0x410

    if-le v0, v8, :cond_54

    const/16 v8, 0x44f

    if-ge v0, v8, :cond_54

    .line 471
    :cond_54
    const/4 v8, 0x1

    if-eq v6, v8, :cond_60

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_60

    .line 472
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 474
    :cond_60
    const/4 v6, 0x1

    .line 475
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 476
    const/16 v8, 0x3400

    if-ge v0, v8, :cond_79

    .line 477
    if-eq v6, v10, :cond_74

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_74

    .line 478
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 480
    :cond_74
    const/4 v6, 0x3

    .line 481
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 483
    :cond_79
    invoke-direct {p0, v0}, Lcom/android/internal/util/HanziToPinyin;->getToken(C)Lcom/android/internal/util/HanziToPinyin$Token;

    move-result-object v5

    .line 484
    .local v5, t:Lcom/android/internal/util/HanziToPinyin$Token;
    iget v8, v5, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_90

    .line 485
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8b

    .line 486
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 488
    :cond_8b
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v6, 0x2

    goto :goto_3d

    .line 491
    :cond_90
    iget v8, v5, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    if-eq v6, v8, :cond_9d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9d

    .line 492
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 494
    :cond_9d
    iget v6, v5, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    .line 495
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 499
    .end local v0           #character:C
    .end local v5           #t:Lcom/android/internal/util/HanziToPinyin$Token;
    :cond_a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 500
    invoke-direct {p0, v3, v7, v6}, Lcom/android/internal/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto/16 :goto_12
.end method