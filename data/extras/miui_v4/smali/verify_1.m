.method public final verify([B)Z
    .registers 4
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 372
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v0, 0x1

    return v0

    if-eq v0, v1, :cond_e

    .line 373
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature object is not initialized properly"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_e
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0
.end method