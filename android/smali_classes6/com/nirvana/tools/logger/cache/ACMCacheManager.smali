.class public Lcom/nirvana/tools/logger/cache/ACMCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nirvana/tools/logger/model/ACMRecord;",
        "G:",
        "Lcom/nirvana/tools/logger/cache/db/AbstractDatabase<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TG;"
        }
    .end annotation
.end field

.field protected mExecutor:Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;


# direct methods
.method public constructor <init>(Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;",
            "Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    iput-object p2, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mExecutor:Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;

    return-void
.end method


# virtual methods
.method public addUploadCount(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/nirvana/tools/logger/cache/ACMCacheManager$2;-><init>(Lcom/nirvana/tools/logger/cache/ACMCacheManager;Ljava/util/List;J)V

    iget-object p1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mExecutor:Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;

    invoke-virtual {p1, v2}, Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cacheRecord(Lcom/nirvana/tools/logger/model/ACMRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;

    invoke-direct {v0, p0, p1}, Lcom/nirvana/tools/logger/cache/ACMCacheManager$1;-><init>(Lcom/nirvana/tools/logger/cache/ACMCacheManager;Lcom/nirvana/tools/logger/model/ACMRecord;)V

    iget-object p1, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mExecutor:Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;

    invoke-virtual {p1, v0}, Lcom/nirvana/tools/logger/executor/ReentrantSingleThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->deleteRecords(Ljava/util/List;)V

    return-void
.end method

.method public getFailedMaxID()J
    .locals 2

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    invoke-virtual {v0}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->queryFailedMaxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedRecords(JJI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->queryFailed(JJI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasFailedRecords()Z
    .locals 3

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->query(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNormalRecords()Z
    .locals 4

    iget-object v0, p0, Lcom/nirvana/tools/logger/cache/ACMCacheManager;->mDatabase:Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->query(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    return v2
.end method
