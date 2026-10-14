.class public Lcn/mucang/android/core/api/cache/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/cache/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/api/ApiResponse;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "cacheTime"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method
