.class public Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private c:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->g()V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$d;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/q;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/q;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$c;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;JLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public i(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;JLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;JLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->l()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;

    invoke-direct {p2, p0, p1, p6, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_0

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/util/concurrent/Callable;)V

    invoke-static {p1, p4, p5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->c:Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
