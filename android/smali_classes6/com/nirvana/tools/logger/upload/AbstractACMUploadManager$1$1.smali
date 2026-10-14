.class Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    iget-object v0, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;

    iget-object v0, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->mCacheManager:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->getFailedMaxID()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    iget-object v0, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->isAllowUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    iget-object v0, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;

    iget-object v1, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->mCacheManager:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    const/16 v6, 0x14

    move-wide v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->getFailedRecords(JJI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    iget-object v1, v1, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->doUploadRecords(Ljava/util/List;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirvana/tools/logger/model/ACMRecord;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/model/ACMRecord;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1$1;->this$1:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;

    iget-object v0, v0, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager$1;->this$0:Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->access$002(Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;Z)Z

    return-void
.end method
