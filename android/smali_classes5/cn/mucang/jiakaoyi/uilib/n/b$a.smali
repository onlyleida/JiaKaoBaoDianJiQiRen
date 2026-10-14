.class public Lcn/mucang/jiakaoyi/uilib/n/b$a;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://device-monitor.kakamobi.cn"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#anmdQ6ZEc6ZrhHWORUmMfHx5"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "/api/open/device-runtime/report.htm"

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;

    return-void
.end method
