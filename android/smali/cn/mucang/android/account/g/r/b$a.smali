.class Lcn/mucang/android/account/g/r/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/g/r/b;->a(Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/request/MucangRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/ApiResponse;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/g/r/b;Lcn/mucang/android/core/api/ApiResponse;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/account/g/r/b$a;->a:Lcn/mucang/android/core/api/ApiResponse;

    iput-object p3, p0, Lcn/mucang/android/account/g/r/b$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/account/g/r/b$a;->a:Lcn/mucang/android/core/api/ApiResponse;

    const-class v1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/account/g/r/b$a;->b:Landroid/app/Activity;

    instance-of v2, v1, Lcn/mucang/android/account/activity/n1;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lcn/mucang/android/account/activity/n1;

    .line 4
    invoke-interface {v1, v0}, Lcn/mucang/android/account/activity/n1;->a(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lcn/mucang/android/core/config/n;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Lcn/mucang/android/core/config/n;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/account/h/d;->A(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)Lcn/mucang/android/account/h/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    .line 7
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
