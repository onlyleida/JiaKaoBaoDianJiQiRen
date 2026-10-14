.class Lcn/mucang/sundial/android/timer/SundialTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/SundialTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/timer/SundialTimer;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/timer/SundialTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/timer/SundialTimer$1;->this$0:Lcn/mucang/sundial/android/timer/SundialTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer$1;->this$0:Lcn/mucang/sundial/android/timer/SundialTimer;

    invoke-static {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->access$000(Lcn/mucang/sundial/android/timer/SundialTimer;)Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/SundialTimer$1;->this$0:Lcn/mucang/sundial/android/timer/SundialTimer;

    invoke-static {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->access$000(Lcn/mucang/sundial/android/timer/SundialTimer;)Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcn/mucang/sundial/android/timer/SundialTimer$1;->this$0:Lcn/mucang/sundial/android/timer/SundialTimer;

    invoke-static {v3}, Lcn/mucang/sundial/android/timer/SundialTimer;->access$100(Lcn/mucang/sundial/android/timer/SundialTimer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;->onTick(J)V

    :cond_0
    return-void
.end method
