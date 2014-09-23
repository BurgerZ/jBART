.class public abstract Lcom/android/providers/contacts/t9/NXTUtils;
.super Ljava/lang/Object;
.source "NXTUtils.java"


# static fields
.field private static final sNumberCeroMap:[C

.field private static final sNumberCeroSet:Ljava/util/Set;

.field private static final sNumberEightMap:[C

.field private static final sNumberEightSet:Ljava/util/Set;

.field private static final sNumberFiveMap:[C

.field private static final sNumberFiveSet:Ljava/util/Set;

.field private static final sNumberFourMap:[C

.field private static final sNumberFourSet:Ljava/util/Set;

.field private static final sNumberNineMap:[C

.field private static final sNumberNineSet:Ljava/util/Set;

.field private static final sNumberOneMap:[C

.field private static final sNumberOneSet:Ljava/util/Set;

.field private static final sNumberSevenMap:[C

.field private static final sNumberSevenSet:Ljava/util/Set;

.field private static final sNumberSixMap:[C

.field private static final sNumberSixSet:Ljava/util/Set;

.field private static final sNumberThreeMap:[C

.field private static final sNumberThreeSet:Ljava/util/Set;

.field private static final sNumberTwoMap:[C

.field private static final sNumberTwoSet:Ljava/util/Set;

.field private static final sPinyinT9Map:[C

.field private static final sZhuyin2T9Map:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_be

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberOneMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberOneMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberOneSet:Ljava/util/Set;

    const/16 v0, 0x5b

    new-array v0, v0, [C

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberTwoMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberTwoMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberTwoSet:Ljava/util/Set;

    const/16 v0, 0x50

    new-array v0, v0, [C

    fill-array-data v0, :array_124

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberThreeMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberThreeMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberThreeSet:Ljava/util/Set;

    const/16 v0, 0x4b

    new-array v0, v0, [C

    fill-array-data v0, :array_178

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFourMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFourMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFourSet:Ljava/util/Set;

    const/16 v0, 0x2b

    new-array v0, v0, [C

    fill-array-data v0, :array_1c8

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFiveMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFiveMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFiveSet:Ljava/util/Set;

    const/16 v0, 0x5a

    new-array v0, v0, [C

    fill-array-data v0, :array_1f8

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSixMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSixMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSixSet:Ljava/util/Set;

    const/16 v0, 0x30

    new-array v0, v0, [C

    fill-array-data v0, :array_256

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSevenMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSevenMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSevenSet:Ljava/util/Set;

    const/16 v0, 0x54

    new-array v0, v0, [C

    fill-array-data v0, :array_28a

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberEightMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberEightMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberEightSet:Ljava/util/Set;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_2e2

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberNineMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberNineMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberNineSet:Ljava/util/Set;

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x314e

    aput-char v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberCeroMap:[C

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberCeroMap:[C

    invoke-static {v0}, Lcom/android/providers/contacts/t9/NXTUtils;->createSet([C)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberCeroSet:Ljava/util/Set;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_322

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sPinyinT9Map:[C

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_340

    sput-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sZhuyin2T9Map:[C

    return-void

    nop

    :array_be
    .array-data 2
        0x3133s
        0x314bs
    .end array-data

    :array_c4
    .array-data 2
        0xc0s
        0xc1s
        0xc3s
        0xc4s
        0xc5s
        0xc6s
        0xc7s
        0xe0s
        0xe1s
        0xe2s
        0xe3s
        0xe4s
        0xe5s
        0xe6s
        0xe7s
        0x100s
        0x101s
        0x102s
        0x103s
        0x104s
        0x105s
        0x106s
        0x107s
        0x108s
        0x109s
        0x10as
        0x10bs
        0x10cs
        0x10ds
        0x180s
        0x181s
        0x182s
        0x183s
        0x184s
        0x185s
        0x186s
        0x187s
        0x188s
        0x1cds
        0x1ces
        0x386s
        0x391s
        0x392s
        0x393s
        0x3acs
        0x3b1s
        0x3b2s
        0x3b3s
        0x410s
        0x411s
        0x412s
        0x413s
        0x430s
        0x431s
        0x432s
        0x433s
        0x490s
        0x491s
        0x1ea0s
        0x1ea1s
        0x1ea2s
        0x1ea3s
        0x1ea4s
        0x1ea5s
        0x1ea6s
        0x1ea7s
        0x1ea8s
        0x1ea9s
        0x1eaas
        0x1eabs
        0x1eacs
        0x1eads
        0x1eaes
        0x1eafs
        0xb0s
        0xb1s
        0xb2s
        0xb3s
        0xb4s
        0xb5s
        0xb6s
        0xb7s
        0x3134s
        0x628s
        0x629s
        0x62as
        0x62bs
        0x67es
        0x5d3s
        0x5d4s
        0x5d5s
    .end array-data

    nop

    :array_124
    .array-data 2
        0xc8s
        0xc9s
        0xcas
        0xcbs
        0xe8s
        0xe9s
        0xeas
        0xebs
        0x10es
        0x10fs
        0x110s
        0x111s
        0x112s
        0x113s
        0x114s
        0x115s
        0x116s
        0x117s
        0x118s
        0x119s
        0x11as
        0x11bs
        0x189s
        0x18as
        0x18bs
        0x18cs
        0x18ds
        0x18es
        0x18fs
        0x190s
        0x191s
        0x192s
        0x394s
        0x395s
        0x396s
        0x3ads
        0x3b4s
        0x3b5s
        0x3b6s
        0x1eb8s
        0x1eb9s
        0x1ebas
        0x1ebbs
        0x1ebcs
        0x1ebds
        0x1ebes
        0x1ebfs
        0x1ec0s
        0x1ec1s
        0x1ec2s
        0x1ec3s
        0x1ec4s
        0x1ec5s
        0x1ec6s
        0x1ec7s
        0x3137s
        0x314cs
        0x401s
        0x402s
        0x404s
        0x414s
        0x415s
        0x416s
        0x417s
        0x434s
        0x435s
        0x436s
        0x437s
        0x451s
        0x452s
        0x454s
        0x5d0s
        0x5d1s
        0x5d2s
        0x621s
        0x622s
        0x623s
        0x625s
        0x627s
        0x649s
    .end array-data

    :array_178
    .array-data 2
        0xccs
        0xcds
        0xcfs
        0xecs
        0xeds
        0xefs
        0x11cs
        0x11ds
        0x11es
        0x11fs
        0x120s
        0x121s
        0x122s
        0x123s
        0x124s
        0x125s
        0x126s
        0x127s
        0x128s
        0x129s
        0x12as
        0x12bs
        0x12cs
        0x12ds
        0x12es
        0x12fs
        0x130s
        0x131s
        0x132s
        0x133s
        0x193s
        0x194s
        0x195s
        0x196s
        0x197s
        0x1cfs
        0x1d0s
        0x396s
        0x397s
        0x398s
        0x399s
        0x3aas
        0x3aes
        0x3afs
        0x3b7s
        0x3b8s
        0x3b9s
        0x3cas
        0x406s
        0x407s
        0x408s
        0x418s
        0x419s
        0x41as
        0x41bs
        0x438s
        0x439s
        0x43as
        0x43bs
        0x456s
        0x457s
        0x458s
        0x5dds
        0x5des
        0x5dfs
        0x5e0s
        0x633s
        0x634s
        0x635s
        0x636s
        0x1ec8s
        0x1ec9s
        0x1ecas
        0x1ecbs
        0x3139s
    .end array-data

    nop

    :array_1c8
    .array-data 2
        0x134s
        0x135s
        0x136s
        0x137s
        0x138s
        0x139s
        0x13as
        0x13bs
        0x13cs
        0x13ds
        0x13es
        0x13fs
        0x140s
        0x141s
        0x142s
        0x198s
        0x199s
        0x19as
        0x19bs
        0x39as
        0x39bs
        0x39cs
        0x3bas
        0x3bbs
        0x3bcs
        0x41cs
        0x41ds
        0x41es
        0x41fs
        0x43cs
        0x43ds
        0x43es
        0x43fs
        0x5d9s
        0x5das
        0x5dbs
        0x5dcs
        0x62fs
        0x630s
        0x631s
        0x632s
        0x698s
        0x3141s
    .end array-data

    nop

    :array_1f8
    .array-data 2
        0xd1s
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd6s
        0xd7s
        0xd8s
        0xf1s
        0xf2s
        0xf3s
        0xf4s
        0xf5s
        0xf6s
        0xf7s
        0xf8s
        0x143s
        0x144s
        0x145s
        0x146s
        0x147s
        0x148s
        0x149s
        0x14as
        0x14bs
        0x14cs
        0x14ds
        0x14es
        0x14fs
        0x150s
        0x151s
        0x152s
        0x153s
        0x19cs
        0x19ds
        0x19es
        0x19fs
        0x1a0s
        0x1a1s
        0x1a2s
        0x1a3s
        0x38cs
        0x39ds
        0x39es
        0x39fs
        0x3bds
        0x3bes
        0x3bfs
        0x3ccs
        0x420s
        0x421s
        0x422s
        0x423s
        0x440s
        0x441s
        0x442s
        0x443s
        0x5d6s
        0x5d7s
        0x5d8s
        0x62cs
        0x62ds
        0x62es
        0x686s
        0x1eccs
        0x1ecds
        0x1eces
        0x1ecfs
        0x1ed0s
        0x1ed1s
        0x1ed2s
        0x1ed3s
        0x1ed4s
        0x1ed5s
        0x1ed6s
        0x1ed7s
        0x1ed8s
        0x1ed9s
        0x1edas
        0x1edbs
        0x1edcs
        0x1edds
        0x1edes
        0x1edfs
        0x1ee0s
        0x1ee1s
        0x1ee2s
        0x1ee3s
        0x3142s
        0x314ds
    .end array-data

    :array_256
    .array-data 2
        0xdfs
        0x154s
        0x155s
        0x156s
        0x157s
        0x158s
        0x159s
        0x15as
        0x15bs
        0x15cs
        0x15ds
        0x15es
        0x15fs
        0x160s
        0x161s
        0x1a4s
        0x1a5s
        0x1a6s
        0x1a7s
        0x1a8s
        0x1a9s
        0x1aas
        0x3a0s
        0x3a1s
        0x3a3s
        0x3c0s
        0x3c1s
        0x3c2s
        0x3c3s
        0x424s
        0x425s
        0x426s
        0x427s
        0x444s
        0x445s
        0x446s
        0x447s
        0x5e8s
        0x5e9s
        0x5eas
        0x624s
        0x626s
        0x646s
        0x647s
        0x648s
        0x64as
        0x6ccs
        0x3145s
    .end array-data

    :array_28a
    .array-data 2
        0xd9s
        0xdas
        0xdbs
        0xdcs
        0xf9s
        0xfas
        0xfbs
        0xfcs
        0x162s
        0x163s
        0x164s
        0x165s
        0x166s
        0x167s
        0x168s
        0x169s
        0x16as
        0x16bs
        0x16cs
        0x16ds
        0x16es
        0x16fs
        0x170s
        0x171s
        0x172s
        0x173s
        0x1abs
        0x1acs
        0x1ads
        0x1aes
        0x1afs
        0x1b0s
        0x1b1s
        0x1b2s
        0x1d3s
        0x1d4s
        0x1d5s
        0x1d6s
        0x1d7s
        0x1d8s
        0x1d9s
        0x1das
        0x1dbs
        0x1dcs
        0x3a4s
        0x3a5s
        0x3a6s
        0x3c4s
        0x3c5s
        0x3c6s
        0x3cbs
        0x428s
        0x429s
        0x42as
        0x42bs
        0x448s
        0x449s
        0x44as
        0x44bs
        0x5e5s
        0x5e6s
        0x5e7s
        0x641s
        0x642s
        0x643s
        0x644s
        0x645s
        0x6a9s
        0x6afs
        0x1ee4s
        0x1ee5s
        0x1ee6s
        0x1ee7s
        0x1ee8s
        0x1ee9s
        0x1eeas
        0x1eebs
        0x1eecs
        0x1eeds
        0x1eees
        0x1eefs
        0x1ef0s
        0x1ef1s
        0x3147s
    .end array-data

    :array_2e2
    .array-data 2
        0xdds
        0xfds
        0x174s
        0x175s
        0x176s
        0x177s
        0x178s
        0x179s
        0x17as
        0x17bs
        0x17cs
        0x17ds
        0x17es
        0x1b3s
        0x1b4s
        0x1b5s
        0x1b6s
        0x1b7s
        0x1b8s
        0x1b9s
        0x1bas
        0x1bbs
        0x1bcs
        0x1bds
        0x1bes
        0x1bfs
        0x38fs
        0x3a7s
        0x3a8s
        0x3a9s
        0x3c7s
        0x3c8s
        0x3c9s
        0x3ces
        0x42cs
        0x42ds
        0x42es
        0x42fs
        0x44cs
        0x44ds
        0x44es
        0x44fs
        0x5e1s
        0x5e2s
        0x5e3s
        0x5e4s
        0x637s
        0x638s
        0x639s
        0x63as
        0x1ef2s
        0x1ef3s
        0x1ef4s
        0x1ef5s
        0x1ef6s
        0x1ef7s
        0x1ef8s
        0x1ef9s
        0x3148s
        0x314as
    .end array-data

    :array_322
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_340
    .array-data 2
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSet([C)Ljava/util/Set;
    .registers 5
    .param p0    # [C

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method public static formatCharToT9(C)C
    .registers 3
    .param p0    # C

    invoke-static {p0}, Lcom/android/providers/contacts/t9/NXTUtils;->isValidT9Key(C)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p0

    :cond_7
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_16

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sPinyinT9Map:[C

    add-int/lit8 v1, p0, -0x41

    aget-char p0, v0, v1

    goto :goto_6

    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_25

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sPinyinT9Map:[C

    add-int/lit8 v1, p0, -0x61

    aget-char p0, v0, v1

    goto :goto_6

    :cond_25
    const/16 v0, 0x3105

    if-lt p0, v0, :cond_34

    const/16 v0, 0x3129

    if-gt p0, v0, :cond_34

    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sZhuyin2T9Map:[C

    add-int/lit16 v1, p0, -0x3105

    aget-char p0, v0, v1

    goto :goto_6

    :cond_34
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberCeroSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 p0, 0x30

    goto :goto_6

    :cond_43
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberOneSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 p0, 0x31

    goto :goto_6

    :cond_52
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberTwoSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/16 p0, 0x32

    goto :goto_6

    :cond_61
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberThreeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/16 p0, 0x33

    goto :goto_6

    :cond_70
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFourSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/16 p0, 0x34

    goto :goto_6

    :cond_7f
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberFiveSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 p0, 0x35

    goto/16 :goto_6

    :cond_8f
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSixSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/16 p0, 0x36

    goto/16 :goto_6

    :cond_9f
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberSevenSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/16 p0, 0x37

    goto/16 :goto_6

    :cond_af
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberEightSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const/16 p0, 0x38

    goto/16 :goto_6

    :cond_bf
    sget-object v0, Lcom/android/providers/contacts/t9/NXTUtils;->sNumberNineSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 p0, 0x39

    goto/16 :goto_6

    :cond_cf
    const/4 p0, 0x0

    goto/16 :goto_6
.end method

.method public static isValidT9Key(C)Z
    .registers 2
    .param p0    # C

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
