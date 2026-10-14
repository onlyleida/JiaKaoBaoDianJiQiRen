.class public final Lcn/mucang/android/jiakaoyi/teachingk2/error/f/e;
.super Lcn/mucang/android/jiakaoyi/teachingk2/error/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/remind/RemindFatigue;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v1, Lkotlin/Pair;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_remind_fatigue:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->Fatigue:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "KEY_ENABLE_FATIGUE"

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;-><init>(Lkotlin/Pair;ZZZZLjava/lang/String;ILkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public h(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 1

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
