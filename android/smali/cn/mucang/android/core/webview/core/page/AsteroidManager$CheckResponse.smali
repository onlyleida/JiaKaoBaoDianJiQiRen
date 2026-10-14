.class Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/AsteroidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckResponse"
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private needUpdate:Z

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->needUpdate:Z

    return v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->hash:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->needUpdate:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->url:Ljava/lang/String;

    return-void
.end method
