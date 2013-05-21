.class public Lcom/miui/weather2/tools/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# static fields
.field public static final country:Ljava/lang/String;

.field public static final info:Ljava/lang/String;

.field public static final language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 19
    sget-object v0, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/tools/LanguageUtil;->info:Ljava/lang/String;

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    sput-object v0, Lcom/miui/weather2/tools/LanguageUtil;->info:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/weather2/tools/LanguageUtil;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguage()I
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, info:I
    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :cond_0
    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->language:Ljava/lang/String;

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const/4 v0, 0x2

    .line 38
    :cond_1
    sget-object v1, Lcom/miui/weather2/tools/LanguageUtil;->country:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 42
    :cond_2
    return v0
.end method
