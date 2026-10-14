.class public final Lcn/mucang/sundial/library/http/CoachApi;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/sundial/library/http/CoachApi;",
        "Lcn/mucang/sundial/library/http/SundialApi;",
        "",
        "idCard",
        "authToken",
        "Lcn/mucang/sundial/library/entity/ServerCoachInfo;",
        "getCoachInfo",
        "(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;",
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

.method public static synthetic getCoachInfo$default(Lcn/mucang/sundial/library/http/CoachApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const-string v0, ""

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/http/CoachApi;->getCoachInfo(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCoachInfo(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;
    .locals 5

    const-string v0, "idCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    const-string v3, "SundialManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "registerInfo"

    .line 3
    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "registerInfo.deviceCode"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceGlobalCode"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class p1, Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    const-string p2, "/api/open/query/coach.htm"

    invoke-static {p0, p2, p1, v3}, Lcn/mucang/sundial/library/http/SundialApi;->access$httpGetData(Lcn/mucang/sundial/library/http/SundialApi;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    return-object p1
.end method
