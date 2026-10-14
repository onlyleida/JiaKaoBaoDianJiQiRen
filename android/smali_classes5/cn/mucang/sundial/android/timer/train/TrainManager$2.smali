.class Lcn/mucang/sundial/android/timer/train/TrainManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/train/TrainManager;->startUploadCourseRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

.field final synthetic val$finalLocalId:J

.field final synthetic val$finalRequest:Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/timer/train/TrainManager;Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    iput-object p2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalRequest:Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    iput-wide p3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {v2}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$900(Lcn/mucang/sundial/android/timer/train/TrainManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalRequest:Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->this$0:Lcn/mucang/sundial/android/timer/train/TrainManager;

    invoke-static {v2}, Lcn/mucang/sundial/android/timer/train/TrainManager;->access$1000(Lcn/mucang/sundial/android/timer/train/TrainManager;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-wide v6, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-wide v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    cmp-long v3, v1, v4

    if-ltz v3, :cond_2

    .line 7
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "upload_status"

    const/4 v3, 0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v2

    const-string v3, "t_course_record"

    iget-wide v4, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    invoke-virtual {v2, v3, v1, v4, v5}, Lcn/mucang/android/core/db/a;->C(Ljava/lang/String;Landroid/content/ContentValues;J)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalRequest:Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRealtimeMessage(Z)V

    .line 12
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u62a5\u67e5\u8be2\u5230\u7684\u5b66\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string p1, "\u6210\u529f"

    goto :goto_1

    :cond_3
    const-string p1, "\u5931\u8d25"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3002\u3002\u3002Local ID: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->setUploading(Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalRequest:Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRealtimeMessage(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u62a5\u67e5\u8be2\u5230\u7684\u5b66\u65f6\u8d85\u65f6\u3002\u3002\u3002Local ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager$2;->val$finalLocalId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->setUploading(Z)V

    return-void
.end method
