.class public final Lcn/mucang/sundial/library/http/StudentApi;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ-\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/sundial/library/http/StudentApi;",
        "Lcn/mucang/sundial/library/http/SundialApi;",
        "",
        "idCard",
        "authToken",
        "xyToken",
        "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
        "getStudentInfo",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
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

.method public static synthetic getStudentInfo$default(Lcn/mucang/sundial/library/http/StudentApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 1
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/sundial/library/http/StudentApi;->getStudentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getStudentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;
    .locals 6

    const-string v0, "idCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "xyToken"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    const-string v4, "SundialManager.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v3

    .line 2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "registerInfo"

    .line 3
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "registerInfo.deviceCode"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deviceGlobalCode"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v4, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class p1, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    const-string p2, "/api/open/query/student.htm"

    invoke-static {p0, p2, p1, v4}, Lcn/mucang/sundial/library/http/SundialApi;->access$httpGetData(Lcn/mucang/sundial/library/http/SundialApi;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    return-object p1
.end method
