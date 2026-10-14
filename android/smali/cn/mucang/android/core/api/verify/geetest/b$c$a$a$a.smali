.class Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->d(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->d(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->e(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/api/verify/geetest/b$b;->c(Ljava/lang/Boolean;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c$a;->a:Lcn/mucang/android/core/api/verify/geetest/b$c;

    iget-object v0, v0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/b;->f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/core/api/verify/geetest/b$b;->a()V

    :cond_0
    return-void
.end method
