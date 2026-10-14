.class public final enum Lcn/mucang/android/core/api/verify/ErrorAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/core/api/verify/ErrorAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/core/api/verify/ErrorAction;

.field public static final BASE_URL:Ljava/lang/String; = "http://error.nav.mucang.cn"

.field public static final enum DIALOG_DEFAULT:Lcn/mucang/android/core/api/verify/ErrorAction;

.field public static final enum VERIFY_CAPTCHA:Lcn/mucang/android/core/api/verify/ErrorAction;

.field public static final enum VERIFY_GEETEST:Lcn/mucang/android/core/api/verify/ErrorAction;

.field public static final enum VERIFY_SMS:Lcn/mucang/android/core/api/verify/ErrorAction;


# instance fields
.field public final errorCode:Ljava/lang/Integer;

.field public final url:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/verify/ErrorAction;

    const-string v1, "DIALOG_DEFAULT"

    const/4 v2, 0x0

    const-string v3, "/dialog/default"

    const-string v4, "1.1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/core/api/verify/ErrorAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->DIALOG_DEFAULT:Lcn/mucang/android/core/api/verify/ErrorAction;

    .line 2
    new-instance v1, Lcn/mucang/android/core/api/verify/ErrorAction;

    const/16 v3, 0x1bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v6, "VERIFY_SMS"

    const/4 v7, 0x1

    const-string v8, "/verify/sms"

    const-string v9, "1.0"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/core/api/verify/ErrorAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_SMS:Lcn/mucang/android/core/api/verify/ErrorAction;

    .line 3
    new-instance v3, Lcn/mucang/android/core/api/verify/ErrorAction;

    const/16 v4, 0x1bd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "VERIFY_GEETEST"

    const/4 v13, 0x2

    const-string v14, "/verify/geetest"

    const-string v15, "1.0"

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/core/api/verify/ErrorAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v3, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_GEETEST:Lcn/mucang/android/core/api/verify/ErrorAction;

    .line 4
    new-instance v10, Lcn/mucang/android/core/api/verify/ErrorAction;

    const/16 v4, 0x1be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v5, "VERIFY_CAPTCHA"

    const/4 v6, 0x3

    const-string v7, "/verify/dun"

    const-string v8, "1.0"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/core/api/verify/ErrorAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v10, Lcn/mucang/android/core/api/verify/ErrorAction;->VERIFY_CAPTCHA:Lcn/mucang/android/core/api/verify/ErrorAction;

    const/4 v4, 0x4

    new-array v4, v4, [Lcn/mucang/android/core/api/verify/ErrorAction;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v10, v4, v0

    .line 5
    sput-object v4, Lcn/mucang/android/core/api/verify/ErrorAction;->$VALUES:[Lcn/mucang/android/core/api/verify/ErrorAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/api/verify/ErrorAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http://error.nav.mucang.cn"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/core/api/verify/ErrorAction;->version:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/core/api/verify/ErrorAction;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method private static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "\\."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isActionSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/api/verify/ErrorAction;->values()[Lcn/mucang/android/core/api/verify/ErrorAction;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lcn/mucang/android/core/api/verify/ErrorAction;->url:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 5
    :try_start_0
    iget-object p0, v4, Lcn/mucang/android/core/api/verify/ErrorAction;->version:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/mucang/android/core/api/verify/ErrorAction;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    return v1
.end method

.method public static shouldIntercept(I)Z
    .locals 6

    const/4 v0, 0x1

    const v1, 0xc350

    if-lt p0, v1, :cond_0

    const v1, 0xea60

    if-ge p0, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/api/verify/ErrorAction;->values()[Lcn/mucang/android/core/api/verify/ErrorAction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 2
    iget-object v5, v5, Lcn/mucang/android/core/api/verify/ErrorAction;->errorCode:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorAction;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/api/verify/ErrorAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/api/verify/ErrorAction;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/core/api/verify/ErrorAction;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/verify/ErrorAction;->$VALUES:[Lcn/mucang/android/core/api/verify/ErrorAction;

    invoke-virtual {v0}, [Lcn/mucang/android/core/api/verify/ErrorAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/core/api/verify/ErrorAction;

    return-object v0
.end method
