.class public final Lcn/mucang/android/account/j/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/utils/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/k;->b(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport$quickLogin$1",
        "Lcn/mucang/android/core/utils/RpcActionCallback;",
        "onRpcResult",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "suc",
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
.field final synthetic a:Lcn/mucang/android/account/j/j;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/mucang/android/account/data/LoginSmsModel;

.field final synthetic d:Lcn/mucang/android/account/j/l;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/j/j;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/l;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/j/k$b;->a:Lcn/mucang/android/account/j/j;

    iput-object p2, p0, Lcn/mucang/android/account/j/k$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/mucang/android/account/j/k$b;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    iput-object p4, p0, Lcn/mucang/android/account/j/k$b;->d:Lcn/mucang/android/account/j/l;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/j/k$b;->a:Lcn/mucang/android/account/j/j;

    iget-object p2, p0, Lcn/mucang/android/account/j/k$b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcn/mucang/android/account/j/k$b;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-interface {p1, p2, v0}, Lcn/mucang/android/account/j/j;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/j/k$b;->d:Lcn/mucang/android/account/j/l;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcn/mucang/android/account/j/k$b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcn/mucang/android/account/j/k$b;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-interface {p1, p2, v0}, Lcn/mucang/android/account/j/l;->a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    :goto_0
    return-void
.end method
