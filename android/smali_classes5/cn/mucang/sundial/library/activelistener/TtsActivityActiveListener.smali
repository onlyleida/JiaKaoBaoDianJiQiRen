.class public final Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR \u0010\r\u001a\u000c0\u000cR\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;",
        "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/v;",
        "onFirstActivityCreated",
        "(Landroid/app/Activity;)V",
        "onAllActivityDestroyed",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/android/eventbus/event/TtsEvent;",
        "liveData",
        "Landroidx/lifecycle/i0;",
        "Landroidx/lifecycle/i0$b;",
        "observer",
        "Landroidx/lifecycle/i0$b;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final liveData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/eventbus/event/TtsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Landroidx/lifecycle/i0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/eventbus/event/TtsEvent;",
            ">.b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->liveData:Landroidx/lifecycle/i0;

    .line 3
    new-instance v1, Landroidx/lifecycle/i0$b;

    sget-object v2, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$observer$1;->INSTANCE:Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$observer$1;

    invoke-direct {v1, v0, v2}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->observer:Landroidx/lifecycle/i0$b;

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener$DefaultImpls;->onActivityResumed(Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;Landroid/app/Activity;)V

    return-void
.end method

.method public onAllActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->liveData:Landroidx/lifecycle/i0;

    iget-object v0, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->observer:Landroidx/lifecycle/i0$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->destroy()V

    return-void
.end method

.method public onFirstActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/Thread;

    sget-object v0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;->INSTANCE:Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->liveData:Landroidx/lifecycle/i0;

    iget-object v0, p0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->observer:Landroidx/lifecycle/i0$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    return-void
.end method
