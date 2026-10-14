.class Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/AsteroidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/webview/core/page/AsteroidManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(JLjava/lang/String;)Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/api/open/check.htm?appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&hash="

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&appletVersion="

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-class p2, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/api/a;->httpGetData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://asteroid.mucang.cn"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#kDw8qW9ElYqjhaSDRYY8iYqP"

    return-object v0
.end method
