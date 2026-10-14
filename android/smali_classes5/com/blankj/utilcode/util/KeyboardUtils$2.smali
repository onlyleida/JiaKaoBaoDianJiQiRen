.class final Lcom/blankj/utilcode/util/KeyboardUtils$2;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 1
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()V

    :cond_1
    return-void
.end method
