.class public Lcn/mucang/android/jiakaoyi/framework/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcn/mucang/android/jiakaoyi/framework/e/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/e/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/e/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcn/mucang/android/jiakaoyi/framework/e/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->i(Ljava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u6355\u83b7\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->a(Ljava/lang/Throwable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/e/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcn/mucang/android/jiakaoyi/framework/e/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/e/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/e/m;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/framework/e/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "TT;>;)",
            "Lcn/mucang/android/jiakaoyi/framework/e/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method
