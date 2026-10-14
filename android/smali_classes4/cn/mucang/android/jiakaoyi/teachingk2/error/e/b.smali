.class public final Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;
.super Lcn/mucang/android/jiakaoyi/teachingk2/error/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/error/ErrorBow2Left;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;",
        "()V",
        "lastTriggerTime",
        "",
        "isTriggered",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
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
.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v1, Lkotlin/Pair;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_error_watchting_front:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->Bow2Left:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "KEY_ENABLE_FACE"

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;-><init>(Lkotlin/Pair;ZZZZLjava/lang/String;ILkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public h(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 7

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;->h:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;->h:J

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;->h:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;->h:J

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/e/b;->h:J

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
