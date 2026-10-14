.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0007J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0007J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0007J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J&\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightDbManager;",
        "",
        "()V",
        "logPrefix",
        "",
        "deleteEntity",
        "",
        "entity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "getLocalList",
        "",
        "getNotUploadList",
        "getUploadedList",
        "onUploadSuccess",
        "trackId",
        "shareUrl",
        "saveVideoDb",
        "onInsert",
        "Lkotlin/Function1;",
        "update",
        "",
        "updateCompressPath",
        "originPath",
        "compressPath",
        "zipPath",
        "duration",
        "",
        "updateTrackId",
        "traceId",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->n(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->m(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "$trackId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shareUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v3, "select * from t_highlight_video where track_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setShareUrl(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setUpdateTime(J)V

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89c6\u9891\u4e0a\u4f20\u6210\u529f,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    :cond_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V
    .locals 2

    const-string v0, "$entity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onInsert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setUpdateTime(J)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 4
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u751f\u6210,"

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/a;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/a;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method

.method private static final n(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 1

    const-string v0, "$onInsert"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string v0, "$originPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$compressPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$zipPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v3, "select * from t_highlight_video where origin_path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setCompressPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setZipPath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setCompressDuration(J)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setUpdateTime(J)V

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual {p1, p0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->c(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    .line 10
    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setOriginPath(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/mucang/android/core/db/a;->F(Lcn/mucang/android/core/db/IdEntity;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u66f4\u65b0\u538b\u7f29\u8def\u5f84,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 13
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 14
    :cond_2
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v3, "select * from t_highlight_video where trace_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setTrackId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setUpdateTime(J)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7ed1\u5b9a\u8f68\u8ff9\u6210\u529f,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    :cond_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 5

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    const-string v3, "entity.id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v2, "DbLock"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v2

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v4, "select * from t_highlight_video order by update_time asc"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "result"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v2, "DbLock"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v2

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v4, "select * from t_highlight_video where share_url = \'\' order by update_time desc"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "result"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v2, "DbLock"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v2

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-string v4, "select * from t_highlight_video where share_url != \'\' order by update_time asc"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "result"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "trackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onInsert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)I
    .locals 2

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/core/db/a;->F(Lcn/mucang/android/core/db/IdEntity;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v0, "originPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/e;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
