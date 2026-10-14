.class public final Lcn/mucang/sundial/library/http/CardApi;
.super Lcn/mucang/sundial/library/http/SundialApi;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/sundial/library/http/CardApi;",
        "Lcn/mucang/sundial/library/http/SundialApi;",
        "",
        "identificationCode",
        "Lcn/mucang/sundial/library/entity/ServerCardInfo;",
        "realityCard",
        "(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCardInfo;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/http/SundialApi;-><init>()V

    return-void
.end method

.method public static synthetic realityCard$default(Lcn/mucang/sundial/library/http/CardApi;Ljava/lang/String;ILjava/lang/Object;)Lcn/mucang/sundial/library/entity/ServerCardInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/http/CardApi;->realityCard(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCardInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final realityCard(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCardInfo;
    .locals 4

    const-string v0, "identificationCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "registerInfo.deviceCode"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deviceGlobalCode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class p1, Lcn/mucang/sundial/library/entity/ServerCardInfo;

    const-string v0, "/api/open/query/reality-card.htm"

    invoke-static {p0, v0, p1, v2}, Lcn/mucang/sundial/library/http/SundialApi;->access$httpGetData(Lcn/mucang/sundial/library/http/SundialApi;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/entity/ServerCardInfo;

    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
