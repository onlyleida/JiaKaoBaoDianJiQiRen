.class public Lcn/mucang/sundial/android/db/SundialLogDb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/db/SundialLogDb$SundialDbHolder;
    }
.end annotation


# static fields
.field private static final DB_VERSION:I = 0x1


# instance fields
.field private final db:Lcn/mucang/android/core/db/a;

.field private final timePattern:Ljava/text/DateFormat;


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/db/SundialLogDb;->timePattern:Ljava/text/DateFormat;

    .line 4
    new-instance v0, Lcn/mucang/android/core/db/b;

    invoke-direct {v0}, Lcn/mucang/android/core/db/b;-><init>()V

    const-string v1, "sundial_log.db"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->d(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    const-string v1, "sql/sundial_log.sql"

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->c(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->e(I)Lcn/mucang/android/core/db/b;

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/core/db/b;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/db/SundialLogDb;->db:Lcn/mucang/android/core/db/a;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/db/SundialLogDb$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/db/SundialLogDb;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/db/SundialLogDb;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialLogDb$SundialDbHolder;->access$100()Lcn/mucang/sundial/android/db/SundialLogDb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/SundialLogDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DebugLog;

    const-string v2, "1 = 1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDb()Lcn/mucang/android/core/db/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/SundialLogDb;->db:Lcn/mucang/android/core/db/a;

    return-object v0
.end method

.method public insert(Lcn/mucang/sundial/android/db/entity/DebugLog;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DebugLog;->getCreateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setCreateTime(J)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DebugLog;->getLog4()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/android/db/SundialLogDb;->timePattern:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DebugLog;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/DebugLog;->setLog4(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/SundialLogDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 8
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/SundialLogDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DebugLog;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/a;->e(Ljava/lang/Class;)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 9
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/SundialLogDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/sundial/android/db/entity/DebugLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "_id < ?"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method
