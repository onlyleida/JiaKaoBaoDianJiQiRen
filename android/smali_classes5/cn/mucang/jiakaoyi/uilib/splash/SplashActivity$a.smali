.class public final Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/splash/SplashActivity$signalTask$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->f(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->e(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->d(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ljava/lang/Thread;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/splash/m;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/m;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V

    .line 3
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final e(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->J()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->k(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;I)V

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-wide/16 v0, 0xbb8

    .line 5
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private static final f(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->g(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 6
    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$string;->mc_contact_number:I

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5982\u4ecd\u6709\u95ee\u9898\uff0c\u8bf7\u8054\u7cfb\u5b98\u65b9\u5ba2\u670d "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/splash/n;

    invoke-direct {v6, v2, p0}, Lcn/mucang/jiakaoyi/uilib/splash/n;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;)V

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/splash/l;

    invoke-direct {v7, v2}, Lcn/mucang/jiakaoyi/uilib/splash/l;-><init>(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    const-string v3, "\u65e0\u6cd5\u68c0\u6d4b\u5230\u4fe1\u53f7\u76d2\uff0c\u8bf7\u786e\u8ba4\u4fe1\u53f7\u76d2\u662f\u5426\u6253\u5f00"

    const-string v5, "\u91cd\u8bd5"

    move-object v2, v8

    .line 8
    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-direct {v0, v1, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    const-string v0, "SplashActivity:\u65e0\u6cd5\u68c0\u6d4b\u5230\u4fe1\u53f7\u76d2"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;->i(Lcn/mucang/jiakaoyi/uilib/splash/SplashActivity;)V

    :cond_3
    :goto_1
    return-void
.end method
