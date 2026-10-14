.class public final Lcom/serenegiant/utils/BuildCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final check(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAndroid1_5()Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid1_6()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_0()Z
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_2()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_3()Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_3_3()Z
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3()Z
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3_1()Z
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3_2()Z
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4()Z
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_0_3()Z
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_1()Z
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_2()Z
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_3()Z
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_4()Z
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid5()Z
    .locals 1

    const/16 v0, 0x15

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid6()Z
    .locals 1

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid7()Z
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid8()Z
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid9()Z
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isBase()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isBase11()Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isCupcake()Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isCurrentDevelopment()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDonut()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclair()Z
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclair01()Z
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclairMR1()Z
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isFroyo()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isGingerBread()Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isGingerBreadMR1()Z
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyComb()Z
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyCombMR1()Z
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyCombMR2()Z
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isIcecreamSandwich()Z
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isIcecreamSandwichMR1()Z
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBean()Z
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBeanMR2()Z
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBeanMr1()Z
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isKitKat()Z
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isKitKatWatch()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isL()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLollipop()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLollipopMR1()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isM()Z
    .locals 1

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isMarshmallow()Z
    .locals 1

    const/16 v0, 0x17

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isN()Z
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNMR1()Z
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNougat()Z
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNougatMR1()Z
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isO()Z
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOMR1()Z
    .locals 1

    const/16 v0, 0x1b

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOreo()Z
    .locals 1

    const/16 v0, 0x1a

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOreoMR1()Z
    .locals 1

    const/16 v0, 0x1b

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isP()Z
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isPie()Z
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method
