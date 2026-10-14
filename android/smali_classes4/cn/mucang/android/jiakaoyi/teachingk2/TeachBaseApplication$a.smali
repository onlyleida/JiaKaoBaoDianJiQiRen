.class public final Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->P()Ljava/util/List;
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
        "cn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$exitEvents$1",
        "Lcn/mucang/android/jiakaoyi/framework/base/exit/ExitEvent;",
        "run",
        "",
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


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;

    const/16 p1, 0x2710

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/k/c;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V

    return-void
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->W(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->V(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->W(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/b0;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
