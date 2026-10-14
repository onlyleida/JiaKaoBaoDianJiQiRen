.class Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->uploadMonitorByPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->isAllowUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-static {v0}, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;->access$000(Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;)Lcom/nirvana/tools/logger/cache/ACMMonitorCacheManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/cache/ACMMonitorCacheManager;->getNormalMonitorRecords(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager$2;->this$0:Lcom/nirvana/tools/logger/upload/ACMMonitorUploadManager;

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/upload/AbstractACMUploadManager;->doUploadRecords(Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
