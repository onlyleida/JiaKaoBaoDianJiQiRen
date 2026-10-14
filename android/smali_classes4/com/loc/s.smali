.class public final Lcom/loc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/s$c;,
        Lcom/loc/s$a;,
        Lcom/loc/s$b;,
        Lcom/loc/s$d;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/loc/s$b;

.field private static volatile b:Lcom/loc/s$d;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:J

.field private static volatile f:Lcom/loc/s$a;

.field private static volatile g:J

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/String;

.field private static volatile j:J

.field private static volatile k:J

.field private static volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/loc/s$b;->a:Lcom/loc/s$b;

    sput-object v0, Lcom/loc/s;->a:Lcom/loc/s$b;

    sget-object v0, Lcom/loc/s$d;->a:Lcom/loc/s$d;

    sput-object v0, Lcom/loc/s;->b:Lcom/loc/s$d;

    const-string v0, ""

    sput-object v0, Lcom/loc/s;->c:Ljava/lang/String;

    sput-object v0, Lcom/loc/s;->d:Ljava/lang/String;

    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/loc/s;->e:J

    sget-object v3, Lcom/loc/s$a;->a:Lcom/loc/s$a;

    sput-object v3, Lcom/loc/s;->f:Lcom/loc/s$a;

    sput-wide v1, Lcom/loc/s;->g:J

    sput-object v0, Lcom/loc/s;->h:Ljava/lang/String;

    sput-object v0, Lcom/loc/s;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/s;->j:J

    sput-wide v0, Lcom/loc/s;->k:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/s;->l:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/t;
    .locals 11

    const-class v0, Lcom/loc/s;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/loc/s;->l:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/loc/s;->d(Landroid/content/Context;)V

    sput-boolean v3, Lcom/loc/s;->l:Z

    :cond_1
    sget-object v2, Lcom/loc/s;->b:Lcom/loc/s$d;

    sget-object v4, Lcom/loc/s$d;->c:Lcom/loc/s$d;

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    sget-object v2, Lcom/loc/s;->b:Lcom/loc/s$d;

    sget-object v4, Lcom/loc/s$d;->a:Lcom/loc/s$d;

    if-ne v2, v4, :cond_2

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->b:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/loc/s;->b:Lcom/loc/s$d;

    sget-object v4, Lcom/loc/s$d;->b:Lcom/loc/s$d;

    if-ne v2, v4, :cond_3

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->c:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    :cond_3
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-ne v2, v3, :cond_7

    sget-object v4, Lcom/loc/s;->a:Lcom/loc/s$b;

    sget-object v6, Lcom/loc/s$b;->c:Lcom/loc/s$b;

    if-eq v4, v6, :cond_7

    sget-object v2, Lcom/loc/s;->a:Lcom/loc/s$b;

    sget-object v4, Lcom/loc/s$b;->a:Lcom/loc/s$b;

    if-ne v2, v4, :cond_5

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->d:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/loc/s;->a:Lcom/loc/s$b;

    sget-object v4, Lcom/loc/s$b;->b:Lcom/loc/s$b;

    if-ne v2, v4, :cond_6

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->e:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :cond_7
    if-ne v2, v3, :cond_a

    sget-object v4, Lcom/loc/s;->f:Lcom/loc/s$a;

    sget-object v6, Lcom/loc/s$a;->c:Lcom/loc/s$a;

    if-eq v4, v6, :cond_a

    sget-object v2, Lcom/loc/s;->f:Lcom/loc/s$a;

    sget-object v4, Lcom/loc/s$a;->a:Lcom/loc/s$a;

    if-ne v2, v4, :cond_8

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->f:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/loc/s;->f:Lcom/loc/s$a;

    sget-object v4, Lcom/loc/s$a;->b:Lcom/loc/s$a;

    if-ne v2, v4, :cond_9

    new-instance v1, Lcom/loc/t;

    sget-object v2, Lcom/loc/s$c;->g:Lcom/loc/s$c;

    invoke-direct {v1, v2, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    :cond_9
    :goto_3
    const/4 v2, 0x0

    :cond_a
    sget-wide v6, Lcom/loc/s;->k:J

    sget-wide v8, Lcom/loc/s;->j:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_b

    sget-wide v6, Lcom/loc/s;->j:J

    sget-wide v8, Lcom/loc/s;->j:J

    sput-wide v8, Lcom/loc/s;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "privacyInfo"

    sget-object v9, Lcom/loc/s;->a:Lcom/loc/s$b;

    invoke-virtual {v9}, Lcom/loc/s$b;->a()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "privacyShow"

    sget-object v9, Lcom/loc/s;->b:Lcom/loc/s$d;

    invoke-virtual {v9}, Lcom/loc/s$d;->a()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "showTime"

    sget-wide v9, Lcom/loc/s;->e:J

    invoke-virtual {v4, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "show2SDK"

    sget-object v9, Lcom/loc/s;->c:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "show2SDKVer"

    sget-object v9, Lcom/loc/s;->d:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "privacyAgree"

    sget-object v9, Lcom/loc/s;->f:Lcom/loc/s$a;

    invoke-virtual {v9}, Lcom/loc/s$a;->a()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "agreeTime"

    sget-wide v9, Lcom/loc/s;->g:J

    invoke-virtual {v4, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "agree2SDK"

    sget-object v9, Lcom/loc/s;->h:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "agree2SDKVer"

    sget-object v9, Lcom/loc/s;->i:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v8

    new-instance v9, Lcom/loc/s$2;

    invoke-direct {v9, p0, v6, v7, v4}, Lcom/loc/s$2;-><init>(Landroid/content/Context;JLorg/json/JSONObject;)V

    invoke-virtual {v8, v9}, Lcom/loc/ck;->b(Lcom/loc/cj;)V

    :catchall_0
    :cond_b
    invoke-static {p0}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_d

    :cond_c
    new-instance v1, Lcom/loc/t;

    sget-object p0, Lcom/loc/s$c;->h:Lcom/loc/s$c;

    invoke-direct {v1, p0, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object p0

    const-string v6, "\u83b7\u53d6apikey\u5931\u8d25\uff1a\nerrorCode : %d\n\u539f\u56e0\uff1a%s"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/loc/t;->a:Lcom/loc/s$c;

    invoke-virtual {v8}, Lcom/loc/s$c;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, v1, Lcom/loc/t;->b:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v2, :cond_e

    new-instance v1, Lcom/loc/t;

    sget-object p0, Lcom/loc/s$c;->a:Lcom/loc/s$c;

    invoke-direct {v1, p0, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u9690\u79c1\u5408\u89c4\u6821\u9a8c\u5931\u8d25\uff1a\nerrorCode : %d\n\u539f\u56e0\uff1a%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/loc/t;->a:Lcom/loc/s$c;

    invoke-virtual {v4}, Lcom/loc/s$c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, v1, Lcom/loc/t;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    monitor-exit v0

    return-object v1

    :cond_f
    :goto_5
    :try_start_3
    new-instance p0, Lcom/loc/t;

    sget-object v1, Lcom/loc/s$c;->i:Lcom/loc/s$c;

    invoke-direct {p0, v1, p1}, Lcom/loc/t;-><init>(Lcom/loc/s$c;Lcom/loc/v;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/loc/s;->b(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Lcom/loc/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-privacy.data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {p0, v3}, Lcom/loc/au;->b(Landroid/content/Context;[B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/loc/s;->b(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/loc/s$a;Lcom/loc/v;)V
    .locals 2

    const-class v0, Lcom/loc/s;

    monitor-enter v0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/loc/s;->l:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/loc/s;->d(Landroid/content/Context;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/s;->l:Z

    :cond_1
    sget-object v1, Lcom/loc/s;->f:Lcom/loc/s$a;

    if-eq p1, v1, :cond_2

    sput-object p1, Lcom/loc/s;->f:Lcom/loc/s$a;

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/loc/s;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/loc/s;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/loc/s;->g:J

    sput-wide p1, Lcom/loc/s;->j:J

    invoke-static {p0}, Lcom/loc/s;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/loc/s$d;Lcom/loc/s$b;Lcom/loc/v;)V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v1, Lcom/loc/s;

    monitor-enter v1

    if-eqz p0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/loc/s;->l:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/loc/s;->d(Landroid/content/Context;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/loc/s;->l:Z

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lcom/loc/s;->b:Lcom/loc/s$d;

    if-eq p1, v3, :cond_2

    sput-object p1, Lcom/loc/s;->b:Lcom/loc/s$d;

    move-object v2, v0

    :cond_2
    sget-object p1, Lcom/loc/s;->a:Lcom/loc/s$b;

    if-eq p2, p1, :cond_3

    sput-object p2, Lcom/loc/s;->a:Lcom/loc/s$b;

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/loc/s;->c:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/loc/s;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/loc/s;->e:J

    sput-wide p1, Lcom/loc/s;->j:J

    invoke-static {p0}, Lcom/loc/s;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/loc/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/loc/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/loc/au;->a(Landroid/content/Context;[B)[B

    move-result-object p1

    invoke-static {p2, p3}, Lcom/loc/s;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/loc/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1

    :catchall_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    throw p0
.end method

.method public static a(Landroid/content/Context;ZLcom/loc/v;)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/loc/s$a;->c:Lcom/loc/s$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/loc/s$a;->b:Lcom/loc/s$a;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/loc/s;->a(Landroid/content/Context;Lcom/loc/s$a;Lcom/loc/v;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZZLcom/loc/v;)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/loc/s$d;->c:Lcom/loc/s$d;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/loc/s$d;->b:Lcom/loc/s$d;

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/loc/s$b;->c:Lcom/loc/s$b;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/loc/s$b;->b:Lcom/loc/s$b;

    :goto_1
    invoke-static {p0, p2, p1, p3}, Lcom/loc/s;->a(Landroid/content/Context;Lcom/loc/s$d;Lcom/loc/s$b;Lcom/loc/v;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/loc/s;->b(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const/4 p0, 0x1

    const-string p1, "privacy.data"

    aput-object p1, v0, p0

    const-string p0, "%d-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/loc/s;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/loc/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "status"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/loc/ao;

    invoke-direct {v2}, Lcom/loc/ao;-><init>()V

    iput-object p0, v2, Lcom/loc/ao;->b:Landroid/content/Context;

    iput-object p1, v2, Lcom/loc/ao;->a:Lorg/json/JSONObject;

    new-instance p0, Lcom/loc/bf;

    invoke-direct {p0}, Lcom/loc/bf;-><init>()V

    invoke-static {v2}, Lcom/loc/bf;->a(Lcom/loc/bk;)Lcom/loc/bl;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/loc/bl;->a:[B

    invoke-static {p0}, Lcom/loc/w;->a([B)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/loc/s;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/loc/s;->l:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/loc/s;->d(Landroid/content/Context;)V

    sput-boolean v2, Lcom/loc/s;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    const-string v1, "%d&%d&%d&%s&%s&%d&%d&%s&%s&%d&%d"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/loc/s;->a:Lcom/loc/s$b;

    invoke-virtual {v5}, Lcom/loc/s$b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/loc/s;->b:Lcom/loc/s$d;

    invoke-virtual {v4}, Lcom/loc/s$d;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-wide v4, Lcom/loc/s;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/loc/s;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/loc/s;->d:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/loc/s;->f:Lcom/loc/s$a;

    invoke-virtual {v4}, Lcom/loc/s$a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    sget-wide v4, Lcom/loc/s;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x7

    sget-object v4, Lcom/loc/s;->h:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x8

    sget-object v4, Lcom/loc/s;->i:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x9

    sget-wide v4, Lcom/loc/s;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0xa

    sget-wide v4, Lcom/loc/s;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMap.privacy.data"

    const-string v3, "AMap.privacy.data"

    invoke-static {p0, v2, v3, v1}, Lcom/loc/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "AMap.privacy.data"

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/loc/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v2

    new-instance v3, Lcom/loc/s$1;

    invoke-direct {v3, v1, p0}, Lcom/loc/s$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/loc/ck;->b(Lcom/loc/cj;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v0}, Lcom/loc/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string p0, "&"

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/s$b;->a(I)Lcom/loc/s$b;

    move-result-object v0

    sput-object v0, Lcom/loc/s;->a:Lcom/loc/s$b;

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/s$d;->a(I)Lcom/loc/s$d;

    move-result-object v0

    sput-object v0, Lcom/loc/s;->b:Lcom/loc/s$d;

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/s;->e:J

    const/4 v0, 0x3

    aget-object v0, p0, v0

    sput-object v0, Lcom/loc/s;->d:Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, p0, v0

    sput-object v0, Lcom/loc/s;->d:Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/s$a;->a(I)Lcom/loc/s$a;

    move-result-object v0

    sput-object v0, Lcom/loc/s;->f:Lcom/loc/s$a;

    const/4 v0, 0x6

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/s;->g:J

    const/4 v0, 0x7

    aget-object v0, p0, v0

    sput-object v0, Lcom/loc/s;->h:Ljava/lang/String;

    const/16 v0, 0x8

    aget-object v0, p0, v0

    sput-object v0, Lcom/loc/s;->i:Ljava/lang/String;

    const/16 v0, 0x9

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/s;->j:J

    const/16 v0, 0xa

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/s;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/AMap/Privacy/Upload"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/AMap/Privacy/Reload"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
