.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokio/SegmentPool;",
        "",
        "Lokio/Segment;",
        "take",
        "()Lokio/Segment;",
        "segment",
        "Lkotlin/v;",
        "recycle",
        "(Lokio/Segment;)V",
        "",
        "byteCount",
        "J",
        "next",
        "Lokio/Segment;",
        "MAX_SIZE",
        "<init>",
        "()V",
        "jvm"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field public static final MAX_SIZE:J = 0x10000L

.field public static byteCount:J

.field public static next:Lokio/Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recycle(Lokio/Segment;)V
    .locals 11

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x2000

    int-to-long v4, v4

    add-long v6, v2, v4

    const-wide/32 v8, 0x10000

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    add-long/2addr v2, v4

    .line 5
    :try_start_1
    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 6
    sget-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 7
    iput v1, p0, Lokio/Segment;->limit:I

    .line 8
    iput v1, p0, Lokio/Segment;->pos:I

    .line 9
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 10
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    const-string p0, "Failed requirement."

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final take()Lokio/Segment;
    .locals 6

    .line 1
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    sput-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 5
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const/16 v4, 0x2000

    int-to-long v4, v4

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0

    .line 8
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    throw v1
.end method
