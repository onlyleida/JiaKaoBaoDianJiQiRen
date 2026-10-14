.class Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->g()V
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->f(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->f(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->f(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
