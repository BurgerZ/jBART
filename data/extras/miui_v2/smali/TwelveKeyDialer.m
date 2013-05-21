.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1208
    const v0, 0x11

    if-eq v0, p1, :cond__0

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1209
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto__0
    :cond__0
    const v0, 0x2a

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 1210

    :goto__0
    return-void

.end method