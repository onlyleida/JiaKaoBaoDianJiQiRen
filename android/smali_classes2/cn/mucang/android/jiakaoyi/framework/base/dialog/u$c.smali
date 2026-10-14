.class Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
