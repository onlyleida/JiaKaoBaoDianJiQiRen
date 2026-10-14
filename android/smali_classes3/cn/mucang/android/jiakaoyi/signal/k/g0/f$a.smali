.class Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/k/g0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const-string p1, "\u91cd\u8fde\u6210\u529f,\u5347\u7ea7\u5b8c\u6210"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->e(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;I)I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->g(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->g(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->h(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->f(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)I

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u91cd\u8fde\u5931\u8d25, \u6b21\u6570\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->d(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->d(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->e(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;I)I

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    .line 15
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/k/g0/b;

    invoke-direct {v4, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/b;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/k/g0/a;

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/a;-><init>(Landroid/app/Activity;)V

    const-string v1, "\u4e3b\u63a7\u5347\u7ea7\u540e\u901a\u4fe1\u6a21\u5757\u521d\u59cb\u5316\u5931\u8d25"

    const-string v2, "\u8bf7\u68c0\u67e5\u4e3b\u63a7\u56fa\u4ef6\u6216\u8005\u7ebf\u8def\u8fde\u63a5"

    const-string v3, "\u9000\u51fa"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {p2, p1, v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 16
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
