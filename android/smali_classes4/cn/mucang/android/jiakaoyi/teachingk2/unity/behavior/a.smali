.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;",
        "",
        "behavior",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V",
        "getBehavior",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
        "hasTriggered",
        "",
        "getHasTriggered",
        "()Z",
        "setHasTriggered",
        "(Z)V",
        "isTriggered",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "reset",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

.field private b:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V
    .locals 1

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->b:Z

    return v0
.end method

.method public abstract c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
.end method

.method public d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->b:Z

    return-void
.end method
