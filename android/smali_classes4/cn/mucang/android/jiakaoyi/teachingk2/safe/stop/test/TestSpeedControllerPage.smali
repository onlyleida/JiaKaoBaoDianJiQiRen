.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;-><init>(D)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->c:Z

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->c:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->c:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;->action:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const-string p1, "\u7ed3\u675f"

    goto :goto_0

    :cond_0
    const-string p1, "\u5f00\u59cb"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->c:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a(B)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a(B)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u901f\u5ea6\u63a7\u5236\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;->action:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->j(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a(B)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u901f\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",gps\u901f\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n\u8f6c\u901f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestSpeedControlBinding;->info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
