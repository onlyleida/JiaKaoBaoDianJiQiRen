.class Lcn/mucang/android/account/activity/BindThirdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/BindThirdActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/activity/BindThirdActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/BindThirdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/l1;->g()V

    const-string v0, "BindThirdActivity"

    const-string v1, "onFailed()"

    .line 3
    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "\u7ed1\u5b9a\u5931\u8d25\uff0c\u7a0d\u540e\u91cd\u8bd5"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/l1;->g()V

    const-string v0, "\u53d6\u6d88\u7ed1\u5b9a"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/l1;->g()V

    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/account/activity/BindThirdActivity$a;->a:Lcn/mucang/android/account/activity/BindThirdActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
