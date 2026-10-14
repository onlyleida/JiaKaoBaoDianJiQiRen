.class public Lcn/mucang/android/jiakaoyi/signal/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(FFZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->a:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->b:F

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->c:Z

    .line 5
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->d:Z

    .line 6
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->e:Z

    .line 7
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->f:Z

    .line 8
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->g:Z

    .line 9
    iput-boolean p8, p0, Lcn/mucang/android/jiakaoyi/signal/d/h;->h:Z

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/signal/d/h;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/b;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->f(F)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->e(F)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->c(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->h(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->d(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->g(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->b(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->i(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;

    .line 12
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->a()Lcn/mucang/android/jiakaoyi/signal/d/h;

    move-result-object v0

    return-object v0
.end method
