.class public final Lcn/mucang/android/jiakaoyi/framework/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J$\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u001a\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00172\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0007J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0004J\u0018\u0010$\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/actionlog/ActionLog;",
        "",
        "()V",
        "Deduct",
        "",
        "FileSize",
        "",
        "Normal",
        "Rule",
        "TAG",
        "simpleDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "createFile",
        "Ljava/io/File;",
        "logFile",
        "getLogFile",
        "dir",
        "fileName",
        "isCheckSize",
        "",
        "isNumber",
        "str",
        "readDeductLogs",
        "",
        "Lcn/mucang/android/jiakaoyi/framework/actionlog/ActionLogEntity;",
        "examSiteId",
        "readLogFile",
        "readNormalLogs",
        "readRuleLogs",
        "write",
        "",
        "json",
        "writeDeduct",
        "deductList",
        "writeNormal",
        "actionDesc",
        "writeRules",
        "ruleList",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/d/b;

.field private static final b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/io/File;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x400000

    cmp-long p3, v1, v3

    if-lez p3, :cond_0

    .line 4
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/d/b;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/d/b;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Ljava/io/File;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/d/b;->b(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[-\\+]?[\\d]*$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public static synthetic e(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->k(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized g(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 3
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1
.end method

.method private final declared-synchronized j(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/d/a;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final k(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    const-string v0, "line.separator"

    const-string v1, "$json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActionLog"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/d/c;",
            ">;"
        }
    .end annotation

    const-string v0, "examSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/d/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string p1, "getDeductLogDir(examSiteId)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deduct.log"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/d/b;->c(Lcn/mucang/android/jiakaoyi/framework/d/b;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->g(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/framework/d/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/d/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/d/c;-><init>()V

    .line 7
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/framework/d/c;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    :try_start_1
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/framework/d/c;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/collections/s;->A0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/d/c;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/d/d;->b()Ljava/io/File;

    move-result-object v1

    const-string v0, "getNormalLogDir()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "normal.log"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/d/b;->c(Lcn/mucang/android/jiakaoyi/framework/d/b;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->g(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/framework/d/b;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/d/c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/d/c;-><init>()V

    .line 7
    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/framework/d/c;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/framework/d/c;->b:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v2}, Lkotlin/collections/s;->A0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_4
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/d/c;",
            ">;"
        }
    .end annotation

    const-string v0, "examSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/d/d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string p1, "getRuleLogDir(examSiteId)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rule.log"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/d/b;->c(Lcn/mucang/android/jiakaoyi/framework/d/b;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->g(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/framework/d/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/d/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/d/c;-><init>()V

    .line 8
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/framework/d/c;->a:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    :try_start_1
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/framework/d/c;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/collections/s;->A0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "examSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/d/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v0, "getDeductLogDir(examSiteId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deduct.log"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->b(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toJSONString(deductList)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->j(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    const-string v0, "actionDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/d/d;->b()Ljava/io/File;

    move-result-object v0

    const-string v1, "getNormalLogDir()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "normal.log"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/d/b;->b(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-direct {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->j(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "examSiteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/d/d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v0, "getRuleLogDir(examSiteId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rule.log"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->b(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toJSONString(ruleList)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->j(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
