.class public final Lcn/mucang/android/account/j/o/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/o/j;->E(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage$sdkInit$1",
        "Lcom/mobile/auth/gatewayauth/TokenResultListener;",
        "onTokenFailed",
        "",
        "s",
        "",
        "onTokenSuccess",
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/mucang/android/account/data/LoginSmsModel;

.field final synthetic c:Lcn/mucang/android/account/j/j;

.field final synthetic d:Lcn/mucang/android/account/j/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/j/o/j$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/mucang/android/account/j/o/j$b;->b:Lcn/mucang/android/account/data/LoginSmsModel;

    iput-object p3, p0, Lcn/mucang/android/account/j/o/j$b;->c:Lcn/mucang/android/account/j/j;

    iput-object p4, p0, Lcn/mucang/android/account/j/o/j$b;->d:Lcn/mucang/android/account/j/l;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    iget-object v1, p0, Lcn/mucang/android/account/j/o/j$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/mucang/android/account/j/o/j$b;->b:Lcn/mucang/android/account/data/LoginSmsModel;

    iget-object v3, p0, Lcn/mucang/android/account/j/o/j$b;->c:Lcn/mucang/android/account/j/j;

    invoke-static {v0, p1, v1, v2, v3}, Lcn/mucang/android/account/j/o/j;->e(Lcn/mucang/android/account/j/o/j;Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;)V

    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 7

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    .line 2
    iget-object v3, p0, Lcn/mucang/android/account/j/o/j$b;->a:Landroid/content/Context;

    .line 3
    iget-object v4, p0, Lcn/mucang/android/account/j/o/j$b;->b:Lcn/mucang/android/account/data/LoginSmsModel;

    .line 4
    iget-object v5, p0, Lcn/mucang/android/account/j/o/j$b;->c:Lcn/mucang/android/account/j/j;

    .line 5
    iget-object v6, p0, Lcn/mucang/android/account/j/o/j$b;->d:Lcn/mucang/android/account/j/l;

    move-object v2, p1

    .line 6
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/account/j/o/j;->f(Lcn/mucang/android/account/j/o/j;Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void
.end method
