.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# instance fields
.field private final i:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;",
            ")V"
        }
    .end annotation

    const-string v0, "\u901a\u4fe1\u8fde\u63a5"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/n;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->i:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    return-void
.end method

.method private synthetic h(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;->Valid:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    :cond_0
    return-void
.end method

.method private synthetic j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->i:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_initing_signal:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->d()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/o;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->i:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    :goto_0
    return-void
.end method

.method public synthetic i(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic k()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f1;->j()V

    return-void
.end method
