.method public final verify([BII)Z
    .registers 6
    .parameter "signature"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 404
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v0, 0x1

    return v0

    if-eq v0, v1, :cond_e

    .line 405
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_e
    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1f

    .line 409
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 411
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method