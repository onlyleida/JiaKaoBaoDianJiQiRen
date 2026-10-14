.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowManager, onActivityStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u5f53\u524d\u8ba1\u6570:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityStopped(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowManager, onActivityStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u5f53\u524d\u8ba1\u6570:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I

    move-result p1

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
