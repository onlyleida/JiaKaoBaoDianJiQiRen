.class Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;
.super Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/logger/cache/ACMCacheManager;->cacheRecord(Lcom/nirvana/tools/logger/model/ACMRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

.field final synthetic val$record:Lcom/nirvana/tools/logger/model/ACMRecord;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/logger/cache/ACMCacheManager;Lcom/nirvana/tools/logger/model/ACMRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;->this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    iput-object p2, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;->val$record:Lcom/nirvana/tools/logger/model/ACMRecord;

    invoke-direct {p0}, Lcom/nirvana/tools/logger/executor/AbstractSafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;->this$0:Lcom/nirvana/tools/logger/cache/ACMCacheManager;

    iget-object v0, v0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    iget-object v1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;->val$record:Lcom/nirvana/tools/logger/model/ACMRecord;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->insert(Lcom/nirvana/tools/logger/model/ACMRecord;)V

    return-void
.end method
