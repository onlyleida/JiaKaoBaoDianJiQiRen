.class Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/cache/ACMCacheManager;->addUploadCount(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

.field final synthetic val$records:Ljava/util/List;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/cache/ACMCacheManager;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    iput-object p2, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->val$records:Ljava/util/List;

    iput-wide p3, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->val$time:J

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    iget-object v0, v0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    iget-object v1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->val$records:Ljava/util/List;

    iget-wide v2, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;->val$time:J

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->updateUploadCount(Ljava/util/List;JI)V

    return-void
.end method
