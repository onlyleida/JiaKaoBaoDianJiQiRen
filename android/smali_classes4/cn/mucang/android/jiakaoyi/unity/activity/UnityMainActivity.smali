.class public Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;
.super Lcn/mucang/android/jiakaoyi/unity/activity/a;
.source "SourceFile"


# static fields
.field public static d:Lcn/mucang/android/jiakaoyi/signal/i/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method public CallFromUnity(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->i()V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->o(Z)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->p(Z)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->o(Z)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->p(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->p(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->p(Z)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->o(Z)V

    return-void
.end method
