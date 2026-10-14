.class public final Lcn/mucang/android/account/activity/AccountSafeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/AccountSafeActivity;->u(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/account/activity/AccountSafeActivity$bindThirdAccount$1",
        "Lcn/mucang/android/account/listener/AccountBindThirdListener;",
        "onCancel",
        "",
        "onFailed",
        "throwable",
        "",
        "onSuccess",
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/account/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/account/activity/AccountSafeActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->b:Lcn/mucang/android/account/activity/AccountSafeActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "\u7ed1\u5b9a\u6210\u529f\uff01"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->a:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u5df2\u7ed1\u5b9a"

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->b:Lcn/mucang/android/account/activity/AccountSafeActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->k(Lcn/mucang/android/account/activity/AccountSafeActivity;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiBindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->a:Ljava/lang/String;

    const-string v2, "weixin"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/account/activity/AccountSafeActivity$a;->b:Lcn/mucang/android/account/activity/AccountSafeActivity;

    invoke-static {v0}, Lcn/mucang/android/account/activity/AccountSafeActivity;->k(Lcn/mucang/android/account/activity/AccountSafeActivity;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxBindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
