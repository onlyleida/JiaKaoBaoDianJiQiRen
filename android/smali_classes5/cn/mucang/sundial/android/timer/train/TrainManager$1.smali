.class Lcn/mucang/sundial/android/timer/train/TrainManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/train/TrainManager;->start(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/timer/train/TrainManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$200(Lcn/mucang/sundial/android/timer/train/TrainManager;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$200(Lcn/mucang/sundial/android/timer/train/TrainManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$202(Lcn/mucang/sundial/android/timer/train/TrainManager;J)J

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$300(Lcn/mucang/sundial/android/timer/train/TrainManager;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$400(Lcn/mucang/sundial/android/timer/train/TrainManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$500(Lcn/mucang/sundial/android/timer/train/TrainManager;J)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->startUploadCourseRecords()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$600(Lcn/mucang/sundial/android/timer/train/TrainManager;)J

    move-result-wide v0

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$600(Lcn/mucang/sundial/android/timer/train/TrainManager;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$602(Lcn/mucang/sundial/android/timer/train/TrainManager;J)J

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$700(Lcn/mucang/sundial/android/timer/train/TrainManager;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {p1, v0, v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$800(Lcn/mucang/sundial/android/timer/train/TrainManager;J)V

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$1;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->startUploadCourseRecords()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrainManager start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
