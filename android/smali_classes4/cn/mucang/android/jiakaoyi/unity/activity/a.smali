.class public Lcn/mucang/android/jiakaoyi/unity/activity/a;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;


# instance fields
.field protected a:Lcom/unity3d/player/UnityPlayer;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->b:I

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->c:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "unity\u9875\u9762"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/unity/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/unity/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 2
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->c:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->b:I

    if-le v1, v0, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onStart()V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/unity/activity/a;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/activity/a;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method
