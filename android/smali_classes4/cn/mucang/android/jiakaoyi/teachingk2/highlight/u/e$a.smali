.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/highlight/video/VideoRecorder$mEncodeListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder$EncodeListener;",
        "onPreapared",
        "",
        "encoder",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;",
        "onRelease",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e$a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e$a;->e()V

    return-void
.end method

.method private static final e()V
    .locals 1

    const-string v0, "\u7f16\u7801\u5f00\u59cb"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e(I)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    .locals 3

    const-string v0, "$encoder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u7f16\u7801\u7ed3\u675f"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e(I)V

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->d(J)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/a;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/b;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
