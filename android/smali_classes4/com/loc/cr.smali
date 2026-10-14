.class public final Lcom/loc/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/cr$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/loc/cr;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Lcom/loc/cq;

.field private b:Lcom/loc/cs;

.field private c:J

.field private d:Lcom/loc/dw;

.field private e:Lcom/loc/cn;

.field private f:Lcom/loc/dw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/cr;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/dw;

    invoke-direct {v0}, Lcom/loc/dw;-><init>()V

    iput-object v0, p0, Lcom/loc/cr;->f:Lcom/loc/dw;

    new-instance v0, Lcom/loc/cq;

    invoke-direct {v0}, Lcom/loc/cq;-><init>()V

    iput-object v0, p0, Lcom/loc/cr;->a:Lcom/loc/cq;

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0}, Lcom/loc/cs;-><init>()V

    iput-object v0, p0, Lcom/loc/cr;->b:Lcom/loc/cs;

    new-instance v0, Lcom/loc/cn;

    invoke-direct {v0}, Lcom/loc/cn;-><init>()V

    iput-object v0, p0, Lcom/loc/cr;->e:Lcom/loc/cn;

    return-void
.end method

.method public static a()Lcom/loc/cr;
    .locals 2

    sget-object v0, Lcom/loc/cr;->g:Lcom/loc/cr;

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/cr;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/loc/cr;->g:Lcom/loc/cr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/cr;

    invoke-direct {v1}, Lcom/loc/cr;-><init>()V

    sput-object v1, Lcom/loc/cr;->g:Lcom/loc/cr;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/loc/cr;->g:Lcom/loc/cr;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/loc/cr$a;)Lcom/loc/ct;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v3, v0, Lcom/loc/cr;->d:Lcom/loc/dw;

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/loc/cr$a;->a:Lcom/loc/dw;

    invoke-virtual {v4, v3}, Lcom/loc/dv;->a(Lcom/loc/dv;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_4

    :cond_1
    iget-object v15, v0, Lcom/loc/cr;->a:Lcom/loc/cq;

    iget-object v3, v1, Lcom/loc/cr$a;->a:Lcom/loc/dw;

    iget-boolean v4, v1, Lcom/loc/cr$a;->j:Z

    iget-byte v5, v1, Lcom/loc/cr$a;->g:B

    iget-object v6, v1, Lcom/loc/cr$a;->h:Ljava/lang/String;

    iget-object v7, v1, Lcom/loc/cr$a;->i:Ljava/util/List;

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v15 .. v20}, Lcom/loc/cq;->a(Lcom/loc/dw;ZBLjava/lang/String;Ljava/util/List;)Lcom/loc/cq$a;

    move-result-object v18

    iget-object v3, v0, Lcom/loc/cr;->b:Lcom/loc/cs;

    iget-object v4, v1, Lcom/loc/cr$a;->a:Lcom/loc/dw;

    iget-object v5, v1, Lcom/loc/cr$a;->b:Ljava/util/List;

    iget-boolean v6, v1, Lcom/loc/cr$a;->e:Z

    iget-wide v7, v1, Lcom/loc/cr$a;->d:J

    move-wide v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/loc/cs;->a(Lcom/loc/dw;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v21

    if-nez v18, :cond_2

    if-eqz v21, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/loc/cr;->f:Lcom/loc/dw;

    iget-object v4, v1, Lcom/loc/cr$a;->a:Lcom/loc/dw;

    iget-wide v5, v1, Lcom/loc/cr$a;->f:J

    move-wide v7, v11

    invoke-static/range {v3 .. v8}, Lcom/loc/do;->a(Lcom/loc/dw;Lcom/loc/dw;JJ)V

    new-instance v2, Lcom/loc/ct;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/loc/cr;->e:Lcom/loc/cn;

    iget-object v5, v0, Lcom/loc/cr;->f:Lcom/loc/dw;

    iget-wide v6, v1, Lcom/loc/cr$a;->c:J

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v19, v6

    invoke-virtual/range {v16 .. v21}, Lcom/loc/cn;->a(Lcom/loc/dw;Lcom/loc/cq$a;JLjava/util/List;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/loc/ct;-><init>(I[B)V

    :cond_3
    iget-object v1, v1, Lcom/loc/cr$a;->a:Lcom/loc/dw;

    iput-object v1, v0, Lcom/loc/cr;->d:Lcom/loc/dw;

    iput-wide v13, v0, Lcom/loc/cr;->c:J

    :cond_4
    return-object v2
.end method
