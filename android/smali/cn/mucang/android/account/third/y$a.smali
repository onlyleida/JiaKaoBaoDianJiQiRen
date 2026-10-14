.class public final Lcn/mucang/android/account/third/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/third/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/third/y;->g(Landroid/app/Activity;Ljava/lang/String;Lcn/mucang/android/account/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "cn/mucang/android/account/third/ThirdBindManager$doThirdAuthorize$1",
        "Lcn/mucang/android/account/third/LoginCallback;",
        "onCancel",
        "",
        "onComplete",
        "mcUserInfo",
        "Lcn/mucang/android/account/data/MCUserInfo;",
        "onError",
        "errorCode",
        "",
        "throwable",
        "",
        "account_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcn/mucang/android/account/third/u;

.field final synthetic c:Lcn/mucang/android/account/i/a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/i/a;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/third/y$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/android/account/third/y$a;->b:Lcn/mucang/android/account/third/u;

    iput-object p3, p0, Lcn/mucang/android/account/third/y$a;->c:Lcn/mucang/android/account/i/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/account/data/MCUserInfo;)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/y;->a:Lcn/mucang/android/account/third/y;

    iget-object v1, p0, Lcn/mucang/android/account/third/y$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/android/account/third/y$a;->b:Lcn/mucang/android/account/third/u;

    invoke-interface {v2}, Lcn/mucang/android/account/third/u;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loginPlatform.thirdPartyValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/account/third/y$a;->b:Lcn/mucang/android/account/third/u;

    invoke-interface {v3}, Lcn/mucang/android/account/third/u;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "loginPlatform.appId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v2, v3}, Lcn/mucang/android/account/third/y;->a(Lcn/mucang/android/account/third/y;Lcn/mucang/android/account/data/MCUserInfo;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    move-result-object p1

    iget-object v2, p0, Lcn/mucang/android/account/third/y$a;->b:Lcn/mucang/android/account/third/u;

    iget-object v3, p0, Lcn/mucang/android/account/third/y$a;->c:Lcn/mucang/android/account/i/a;

    invoke-static {v0, v1, p1, v2, v3}, Lcn/mucang/android/account/third/y;->b(Lcn/mucang/android/account/third/y;Landroid/app/Activity;Lcn/mucang/android/account/api/data/ThirdLoginRequest;Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/i/a;)V

    return-void
.end method

.method public b(ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/third/y$a;->b:Lcn/mucang/android/account/third/u;

    invoke-interface {p1}, Lcn/mucang/android/account/third/u;->c()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/third/y$a;->c:Lcn/mucang/android/account/i/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcn/mucang/android/account/i/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/y$a;->c:Lcn/mucang/android/account/i/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/account/i/a;->onCancel()V

    :goto_0
    return-void
.end method
