.class public Lcn/mucang/android/core/api/b;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/api/b;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/core/api/b;->b:Ljava/util/Map;

    const-string v0, "bucket"

    .line 4
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b([B)Lcn/mucang/android/core/api/ImageUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "/api/open/upload.htm"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[B)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class v0, Lcn/mucang/android/core/api/ImageUploadResult;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/api/ImageUploadResult;

    return-object p1
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://upload-image.kakamobi.cn"

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected getRequestConfig()Lcn/mucang/android/core/api/request/e/c;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/core/api/request/e/c;

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x2710

    const-wide/32 v5, 0xea60

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/api/request/e/c;-><init>(JJJ)V

    return-object v7
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/b;->a:Ljava/lang/String;

    return-object v0
.end method
