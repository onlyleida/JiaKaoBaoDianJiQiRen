.class Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/q/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic b:Landroidx/appcompat/app/d;

.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->b:Landroidx/appcompat/app/d;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic e(Landroidx/appcompat/app/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const-string v0, "\u6b63\u5728\u89e3\u6790\u5730\u56fe\u6570\u636e"

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic g(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/q/h;->l(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;

    invoke-direct {v1, p0, p3, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u5730\u56fe\u89e3\u6790\u5931\u8d25"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    return-void
.end method

.method public b(ZLjava/io/File;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->b:Landroidx/appcompat/app/d;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;Landroidx/appcompat/app/d;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->b:Landroidx/appcompat/app/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/f;

    invoke-direct {v1, p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/f;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->b:Landroidx/appcompat/app/d;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;)V

    invoke-direct {p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->c(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic f(Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->e(Landroidx/appcompat/app/d;)V

    return-void
.end method

.method public synthetic h(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->g(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
