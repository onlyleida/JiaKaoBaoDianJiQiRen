.class Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;->uploadLogger(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;

.field final synthetic val$endTimeMills:J

.field final synthetic val$level:I

.field final synthetic val$startTimeMills:J


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;

    iput-wide p2, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$startTimeMills:J

    iput-wide p4, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$endTimeMills:J

    iput p6, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$level:I

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    :goto_0
    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->isAllowUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;

    invoke-static {v0}, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;->access$000(Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;)Lcom/nirvana/tools/logger/cache/ACMLogCacheManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$startTimeMills:J

    iget-wide v4, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$endTimeMills:J

    const/16 v6, 0x14

    const/4 v7, 0x0

    iget v8, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->val$level:I

    invoke-virtual/range {v1 .. v8}, Lcom/nirvana/tools/logger/cache/ACMLogCacheManager;->getLoggerRecords(JJIII)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/logger/upload/ACMLogUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/ACMLogUploadManager;

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->doUploadRecords(Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
