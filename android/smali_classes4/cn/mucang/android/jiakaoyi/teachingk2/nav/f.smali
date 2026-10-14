.class public final Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;
.super Lcn/mucang/android/jiakaoyi/framework/e/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/BasePathApi;",
        "()V",
        "getPaths",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
        "start",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "end",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "examSiteId"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startX"

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string v2, "startY"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endX"

    invoke-direct {p1, v2, v1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    const-string v1, "endY"

    invoke-direct {p1, v1, p2}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/api/open/path/find.htm"

    .line 7
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpPost(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
