.class final Lcom/tencent/bugly/crashreport/crash/c$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "local_crash_lock"

    const-wide/16 v3, 0x2710

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to lock file for uploading local crash."

    .line 2
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/t;->b()V

    .line 4
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/b;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Size of crash list: %s"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x14

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    int-to-long v10, v3

    cmp-long v7, v10, v8

    if-gez v7, :cond_1

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v7, v3

    .line 10
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v11, v6

    goto :goto_1

    :cond_2
    move-object v11, v1

    .line 11
    :goto_1
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v10, v1, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    goto :goto_2

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "no crash need to be uploaded at this start"

    .line 12
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 13
    :goto_2
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
