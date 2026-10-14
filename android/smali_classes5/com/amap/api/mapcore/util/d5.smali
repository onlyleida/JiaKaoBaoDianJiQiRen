.class public Lcom/amap/api/mapcore/util/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/d5$c;,
        Lcom/amap/api/mapcore/util/d5$b;,
        Lcom/amap/api/mapcore/util/d5$a;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""

.field private static c:Landroid/content/Context; = null

.field private static volatile d:Z = true

.field private static e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amap/api/mapcore/util/d5$c;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/String;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/d5;->e:Ljava/util/Vector;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/amap/api/mapcore/util/d5;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    sput-wide v0, Lcom/amap/api/mapcore/util/d5;->h:J

    return-void
.end method

.method public static A()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/amap/api/mapcore/util/d5;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amap/api/mapcore/util/d5;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/mapcore/util/d5;->h:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    sput-object v0, Lcom/amap/api/mapcore/util/d5;->g:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/d5;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/d5;->h:J

    .line 9
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 12
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 16
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 17
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_5

    .line 18
    check-cast v4, Ljava/net/Inet6Address;

    .line 19
    invoke-static {v4}, Lcom/amap/api/mapcore/util/d5;->y(Ljava/net/InetAddress;)Z

    move-result v4

    if-nez v4, :cond_4

    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 20
    :cond_5
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    .line 21
    check-cast v4, Ljava/net/Inet4Address;

    .line 22
    invoke-static {v4}, Lcom/amap/api/mapcore/util/d5;->y(Ljava/net/InetAddress;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 23
    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FMTkyLjE2OC40My4"

    invoke-static {v5}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    or-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_3

    if-eqz v2, :cond_7

    const-string v1, "wlan"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    sget-object v1, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    const-string v2, "WIFI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_3

    const-string v1, "rmnet"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    sget-object v1, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    const-string v2, "MOBILE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "ipstack"

    .line 28
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static B(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/s6;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/s6;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "k"

    .line 2
    invoke-virtual {v0, p0, v2, v1}, Lcom/amap/api/mapcore/util/s6;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/amap/api/mapcore/util/d5;->d:Z

    return-void
.end method

.method private static C(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "able"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p1

    .line 2
    sget-boolean v0, Lcom/amap/api/mapcore/util/d5;->d:Z

    if-eq p1, v0, :cond_1

    .line 3
    sput-boolean p1, Lcom/amap/api/mapcore/util/d5;->d:Z

    .line 4
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/d5;->o(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public static D()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v2, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public static E()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore/util/g5;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v2, Lcom/amap/api/mapcore/util/d5;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private static F()V
    .locals 4

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/d5;->z(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yyyyMMdd"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/n5;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/d5$c;->b(Lcom/amap/api/mapcore/util/d5$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/d5$c;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/amap/api/mapcore/util/d5$c;->f(Lcom/amap/api/mapcore/util/d5$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore/util/d5$c;->f(Lcom/amap/api/mapcore/util/d5$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    sget-object v1, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/d5;->i(Landroid/content/Context;Lcom/amap/api/mapcore/util/d5$c;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/d5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/m5;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore/util/d5$a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore/util/d5;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;Z)Lcom/amap/api/mapcore/util/d5$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;Z)Lcom/amap/api/mapcore/util/d5$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/m5;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/amap/api/mapcore/util/d5$a;"
        }
    .end annotation

    const-string v5, "DEF_ID"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/d5;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Lcom/amap/api/mapcore/util/d5$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Lcom/amap/api/mapcore/util/d5$a;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/m5;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/amap/api/mapcore/util/d5$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "infocode"

    const-string v4, "info"

    const-string v8, "result"

    const-string v9, "ver"

    const-string v5, "status"

    const-string v10, "17I"

    const-string v11, "lc"

    const-string v12, "at"

    const-string v0, ";"

    .line 1
    new-instance v13, Lcom/amap/api/mapcore/util/d5$a;

    invoke-direct {v13}, Lcom/amap/api/mapcore/util/d5$a;-><init>()V

    .line 2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, v13, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/amap/api/mapcore/util/i5;->c(Landroid/content/Context;)V

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/amap/api/mapcore/util/d5;->B(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    .line 6
    :cond_0
    :try_start_0
    new-instance v7, Lcom/amap/api/mapcore/util/f7;

    invoke-direct {v7}, Lcom/amap/api/mapcore/util/f7;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 7
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "15K"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "16H"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "17S"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 8
    :try_start_3
    new-instance v0, Lcom/amap/api/mapcore/util/d5$b;

    move-object/from16 v14, p3

    invoke-direct {v0, v1, v2, v6, v14}, Lcom/amap/api/mapcore/util/d5$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d5$b;->q()Z

    move-result v14

    invoke-virtual {v7, v0, v14}, Lcom/amap/api/mapcore/util/f7;->b(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object v7
    :try_end_3
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_1

    .line 10
    :try_start_4
    iget-object v0, v7, Lcom/amap/api/mapcore/util/m7;->a:[B
    :try_end_4
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v15, v6

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v15, v6

    goto :goto_a

    :cond_1
    const/4 v14, 0x0

    .line 11
    :goto_0
    :try_start_5
    invoke-static {v14}, Lcom/amap/api/mapcore/util/d5;->f([B)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v15, v6

    move-object v6, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v15, v6

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v6

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v15, v6

    goto :goto_b

    :catchall_2
    move-object v15, v6

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v15, v6

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catchall_3
    move-object/from16 v15, p2

    .line 12
    :catchall_4
    :goto_1
    :try_start_6
    new-instance v0, Lcom/amap/api/mapcore/util/gb;

    const-string v6, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v6}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    move-object/from16 v15, p2

    .line 13
    :goto_2
    throw v0
    :try_end_6
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v15, p2

    :goto_3
    const/4 v7, 0x0

    :goto_4
    const/4 v14, 0x0

    .line 14
    :goto_5
    invoke-static {v0, v12, v11}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore/util/d5;->k(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v15, p2

    :goto_6
    const/4 v7, 0x0

    :goto_7
    const/4 v14, 0x0

    .line 16
    :goto_8
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore/util/d5;->k(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v15, p2

    :goto_9
    const/4 v7, 0x0

    :goto_a
    const/4 v14, 0x0

    .line 17
    :goto_b
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gb;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/amap/api/mapcore/util/d5$a;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gb;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/amap/api/mapcore/util/d5;->j(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)V

    const-string v6, "/v3/iasdkauth"

    .line 19
    invoke-static {v2, v6, v0}, Lcom/amap/api/mapcore/util/e6;->j(Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Lcom/amap/api/mapcore/util/gb;)V

    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-nez v14, :cond_2

    return-object v13

    .line 20
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {v14}, Lcom/amap/api/mapcore/util/n5;->g([B)Ljava/lang/String;

    move-result-object v6

    .line 22
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "result is null"

    .line 23
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore/util/d5;->j(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)V

    .line 24
    :cond_4
    :try_start_7
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_5

    .line 27
    sput v5, Lcom/amap/api/mapcore/util/d5;->a:I

    goto :goto_f

    :cond_5
    if-nez v0, :cond_9

    const-string v0, "authcsid"

    const-string v5, "authgsid"

    if-eqz v7, :cond_6

    .line 28
    iget-object v0, v7, Lcom/amap/api/mapcore/util/m7;->c:Ljava/lang/String;

    .line 29
    iget-object v5, v7, Lcom/amap/api/mapcore/util/m7;->d:Ljava/lang/String;

    .line 30
    :cond_6
    invoke-static {v1, v0, v5, v14}, Lcom/amap/api/mapcore/util/n5;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    sput v6, Lcom/amap/api/mapcore/util/d5;->a:I

    .line 32
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 33
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/amap/api/mapcore/util/d5;->b:Ljava/lang/String;

    :cond_7
    const-string v4, ""

    .line 34
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 35
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_e

    :cond_8
    move-object v7, v4

    :goto_e
    const-string v3, "/v3/iasdkauth"

    .line 36
    sget-object v4, Lcom/amap/api/mapcore/util/d5;->b:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object v6, v0

    invoke-static/range {v2 .. v7}, Lcom/amap/api/mapcore/util/e6;->k(Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget v0, Lcom/amap/api/mapcore/util/d5;->a:I

    if-nez v0, :cond_9

    .line 38
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->b:Ljava/lang/String;

    iput-object v0, v13, Lcom/amap/api/mapcore/util/d5$a;->a:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    return-object v13

    .line 39
    :cond_9
    :goto_f
    :try_start_8
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    .line 41
    :try_start_9
    invoke-static {v0, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_a
    :goto_10
    invoke-static {v14, v8}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 43
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    invoke-static {v1, v15, v13, v0}, Lcom/amap/api/mapcore/util/d5;->m(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore/util/d5$a;Lorg/json/JSONObject;)V

    .line 45
    invoke-static {v0, v10}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 46
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "na"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "aa"

    .line 48
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v2

    .line 49
    sput-boolean v3, Lcom/amap/api/mapcore/util/y5;->f:Z

    .line 50
    sput-boolean v2, Lcom/amap/api/mapcore/util/y5;->g:Z

    .line 51
    :cond_b
    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/d5;->n(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    .line 52
    invoke-static {v0, v12, v11}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_11
    return-object v13
.end method

.method private static d(Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/amap/api/mapcore/util/d5;->e:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3
    sget-object v2, Lcom/amap/api/mapcore/util/d5;->e:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/d5$c;

    if-eqz v2, :cond_2

    .line 4
    invoke-static {v2}, Lcom/amap/api/mapcore/util/d5$c;->g(Lcom/amap/api/mapcore/util/d5$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static f([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 1
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 2
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 5
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 6
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore/util/n5;->v()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v0, v3, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 8
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/amap/api/mapcore/util/n5;->g([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static i(Landroid/content/Context;Lcom/amap/api/mapcore/util/d5$c;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/d5$c;->g(Lcom/amap/api/mapcore/util/d5$c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/d5$c;->e()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Lcom/amap/api/mapcore/util/s6;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/s6;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    .line 5
    invoke-virtual {v0, p0, v1, p1}, Lcom/amap/api/mapcore/util/s6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static j(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_sdk_auth_fail"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amap_sdk_auth_fail_type"

    .line 3
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "amap_sdk_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "amap_sdk_version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    new-instance p2, Lcom/amap/api/mapcore/util/u7;

    const-string v0, "core"

    const-string v1, "1.0"

    const-string v2, "O001"

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/u7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/u7;->a(Ljava/lang/String;)V

    .line 11
    invoke-static {p2, p0}, Lcom/amap/api/mapcore/util/v7;->d(Lcom/amap/api/mapcore/util/u7;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static k(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "on exception"

    .line 2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/d5;->j(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/c5;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore/util/d5$a;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "off"

    .line 1
    new-instance v1, Lcom/amap/api/mapcore/util/d5$a$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/d5$a$a;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/d5$a$a;->a:Z

    .line 3
    iput-object v1, p2, Lcom/amap/api/mapcore/util/d5$a;->w:Lcom/amap/api/mapcore/util/d5$a$a;

    :try_start_0
    const-string v3, ";"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    array-length v3, p1

    if-lez v3, :cond_1

    .line 6
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 7
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    iget-object v6, p2, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v3, "at"

    const-string v4, "co"

    .line 9
    invoke-static {p1, v3, v4}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "16H"

    .line 10
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "able"

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/amap/api/mapcore/util/d5$a;->a(Lcom/amap/api/mapcore/util/d5$a;Z)Z

    :cond_2
    const-string p1, "11K"

    .line 13
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v3, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/d5$a$a;->a:Z

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcom/amap/api/mapcore/util/d5$a$a;->b:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "AuthConfigManager"

    const-string v1, "loadException"

    .line 19
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p1, "001"

    .line 20
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/amap/api/mapcore/util/d5$a$d;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d5$a$d;-><init>()V

    .line 23
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->t(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$d;)V

    .line 24
    iput-object v0, p2, Lcom/amap/api/mapcore/util/d5$a;->x:Lcom/amap/api/mapcore/util/d5$a$d;

    :cond_4
    const-string p1, "002"

    .line 25
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/amap/api/mapcore/util/d5$a$c;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d5$a$c;-><init>()V

    .line 28
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->s(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$c;)V

    .line 29
    iput-object v0, p2, Lcom/amap/api/mapcore/util/d5$a;->z:Lcom/amap/api/mapcore/util/d5$a$c;

    :cond_5
    const-string p1, "14S"

    .line 30
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/amap/api/mapcore/util/d5$a$c;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d5$a$c;-><init>()V

    .line 33
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->s(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$c;)V

    .line 34
    iput-object v0, p2, Lcom/amap/api/mapcore/util/d5$a;->A:Lcom/amap/api/mapcore/util/d5$a$c;

    .line 35
    :cond_6
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/d5;->p(Lcom/amap/api/mapcore/util/d5$a;Lorg/json/JSONObject;)V

    const-string p1, "14Z"

    .line 36
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/amap/api/mapcore/util/d5$a$f;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d5$a$f;-><init>()V

    .line 39
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->v(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$f;)V

    .line 40
    iput-object v0, p2, Lcom/amap/api/mapcore/util/d5$a;->F:Lcom/amap/api/mapcore/util/d5$a$f;

    :cond_7
    const-string p1, "151"

    .line 41
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/amap/api/mapcore/util/d5$a$e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d5$a$e;-><init>()V

    .line 44
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/d5;->u(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$e;)V

    .line 45
    iput-object v0, p2, Lcom/amap/api/mapcore/util/d5$a;->y:Lcom/amap/api/mapcore/util/d5$a$e;

    :cond_8
    const-string p1, "17S"

    .line 46
    invoke-static {p3, p1}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/d5;->C(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 49
    :cond_9
    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/d5;->p(Lcom/amap/api/mapcore/util/d5$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "15K"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isTargetAble"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "able"

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/i5;->f(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/amap/api/mapcore/util/i5;->d(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static o(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/s6;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/s6;-><init>(Ljava/lang/String;)V

    const-string v1, "k"

    .line 2
    invoke-virtual {v0, p0, v1, p1}, Lcom/amap/api/mapcore/util/s6;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static p(Lcom/amap/api/mapcore/util/d5$a;Lorg/json/JSONObject;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "145"

    const-string v3, "014"

    const-string v4, "013"

    const-string v5, "012"

    const-string v6, "011"

    const-string v7, "123"

    const-string v8, "122"

    const-string v9, "121"

    const-string v10, "13S"

    const-string v11, "135"

    const-string v12, "11Z"

    const-string v13, "010"

    const-string v14, "006"

    const-string v15, "11G"

    move-object/from16 v16, v2

    const-string v2, "13J"

    move-object/from16 v17, v3

    const-string v3, "13A"

    move-object/from16 v18, v4

    const-string v4, "11F"

    move-object/from16 v19, v5

    const-string v5, "11E"

    move-object/from16 v20, v6

    const-string v6, "11H"

    move-object/from16 v21, v7

    const-string v7, "11I"

    move-object/from16 v22, v8

    const-string v8, "11C"

    move-object/from16 v23, v9

    const-string v9, "11B"

    .line 1
    :try_start_0
    invoke-static {v1, v9}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v0, Lcom/amap/api/mapcore/util/d5$a;->g:Lorg/json/JSONObject;

    .line 3
    :cond_0
    invoke-static {v1, v8}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, v0, Lcom/amap/api/mapcore/util/d5$a;->j:Lorg/json/JSONObject;

    .line 5
    :cond_1
    invoke-static {v1, v7}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v0, Lcom/amap/api/mapcore/util/d5$a;->k:Lorg/json/JSONObject;

    .line 7
    :cond_2
    invoke-static {v1, v6}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v0, Lcom/amap/api/mapcore/util/d5$a;->l:Lorg/json/JSONObject;

    .line 9
    :cond_3
    invoke-static {v1, v5}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/mapcore/util/d5$a;->m:Lorg/json/JSONObject;

    .line 11
    :cond_4
    invoke-static {v1, v4}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 12
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/mapcore/util/d5$a;->n:Lorg/json/JSONObject;

    .line 13
    :cond_5
    invoke-static {v1, v3}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/mapcore/util/d5$a;->p:Lorg/json/JSONObject;

    .line 15
    :cond_6
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->h:Lorg/json/JSONObject;

    .line 17
    :cond_7
    invoke-static {v1, v15}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->o:Lorg/json/JSONObject;

    .line 19
    :cond_8
    invoke-static {v1, v14}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 21
    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->q:Lorg/json/JSONObject;

    .line 22
    :cond_9
    invoke-static {v1, v13}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->r:Lorg/json/JSONObject;

    .line 25
    :cond_a
    invoke-static {v1, v12}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    new-instance v3, Lcom/amap/api/mapcore/util/d5$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/d5$a$b;-><init>()V

    .line 28
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/d5;->r(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$b;)V

    .line 29
    iput-object v3, v0, Lcom/amap/api/mapcore/util/d5$a;->B:Lcom/amap/api/mapcore/util/d5$a$b;

    .line 30
    :cond_b
    invoke-static {v1, v11}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->i:Lorg/json/JSONObject;

    .line 32
    :cond_c
    invoke-static {v1, v10}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->f:Lorg/json/JSONObject;

    :cond_d
    move-object/from16 v2, v23

    .line 34
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 35
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    new-instance v3, Lcom/amap/api/mapcore/util/d5$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/d5$a$b;-><init>()V

    .line 37
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/d5;->r(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$b;)V

    .line 38
    iput-object v3, v0, Lcom/amap/api/mapcore/util/d5$a;->C:Lcom/amap/api/mapcore/util/d5$a$b;

    :cond_e
    move-object/from16 v2, v22

    .line 39
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 40
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/amap/api/mapcore/util/d5$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/d5$a$b;-><init>()V

    .line 42
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/d5;->r(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$b;)V

    .line 43
    iput-object v3, v0, Lcom/amap/api/mapcore/util/d5$a;->D:Lcom/amap/api/mapcore/util/d5$a$b;

    :cond_f
    move-object/from16 v2, v21

    .line 44
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/amap/api/mapcore/util/d5$a$b;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/d5$a$b;-><init>()V

    .line 47
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/d5;->r(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$b;)V

    .line 48
    iput-object v3, v0, Lcom/amap/api/mapcore/util/d5$a;->E:Lcom/amap/api/mapcore/util/d5$a$b;

    :cond_10
    move-object/from16 v2, v20

    .line 49
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->b:Lorg/json/JSONObject;

    :cond_11
    move-object/from16 v2, v19

    .line 52
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 53
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->c:Lorg/json/JSONObject;

    :cond_12
    move-object/from16 v2, v18

    .line 55
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->d:Lorg/json/JSONObject;

    :cond_13
    move-object/from16 v2, v17

    .line 57
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->e:Lorg/json/JSONObject;

    :cond_14
    move-object/from16 v2, v16

    .line 59
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->s:Lorg/json/JSONObject;

    :cond_15
    const-string v2, "14B"

    .line 61
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "14B"

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/d5$a;->t:Lorg/json/JSONObject;

    :cond_16
    const-string v2, "14D"

    .line 63
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/n5;->m(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "14D"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/d5$a;->u:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "pe"

    .line 65
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_0
    return-void
.end method

.method public static q(Ljava/lang/String;ZZZJ)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "downLevel"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->V(Landroid/content/Context;)I

    move-result p0

    const-string p2, "0"

    const-string v1, "1"

    if-nez p0, :cond_1

    move-object p0, p2

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    const-string v2, "ant"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string p0, "6"

    goto :goto_1

    :cond_2
    const-string p0, "4"

    :goto_1
    const-string p1, "type"

    .line 6
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v1

    :goto_2
    const-string p0, "status"

    .line 7
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "duration"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 12
    :cond_4
    :try_start_0
    new-instance p1, Lcom/amap/api/mapcore/util/u7;

    sget-object p2, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const-string p3, "core"

    const-string p4, "1.0"

    const-string p5, "O002"

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/amap/api/mapcore/util/u7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore/util/u7;->a(Ljava/lang/String;)V

    .line 14
    sget-object p0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/amap/api/mapcore/util/v7;->d(Lcom/amap/api/mapcore/util/u7;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_3
    return-void
.end method

.method private static r(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$b;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 2
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    .line 3
    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    .line 4
    invoke-static {p0, v3}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    .line 5
    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    iput-object v0, p1, Lcom/amap/api/mapcore/util/d5$a$b;->c:Ljava/lang/String;

    .line 7
    iput-object v1, p1, Lcom/amap/api/mapcore/util/d5$a$b;->b:Ljava/lang/String;

    .line 8
    iput-object v2, p1, Lcom/amap/api/mapcore/util/d5$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/d5$a$b;->a:Z

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/mapcore/util/d5$a$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "pe"

    .line 11
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static s(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$c;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 2
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    iput-object v0, p1, Lcom/amap/api/mapcore/util/d5$a$c;->b:Ljava/lang/String;

    .line 4
    iput-object p0, p1, Lcom/amap/api/mapcore/util/d5$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "psc"

    .line 5
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static t(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$d;)V
    .locals 3

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "md5"

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 2
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    .line 3
    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p1, Lcom/amap/api/mapcore/util/d5$a$d;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p1, Lcom/amap/api/mapcore/util/d5$a$d;->b:Ljava/lang/String;

    .line 8
    iput-object p0, p1, Lcom/amap/api/mapcore/util/d5$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "psu"

    .line 9
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static u(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$e;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "able"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p0

    .line 2
    iput-boolean p0, p1, Lcom/amap/api/mapcore/util/d5$a$e;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static v(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/d5$a$f;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "md5"

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "md5info"

    .line 2
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 3
    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    .line 4
    invoke-static {p0, v3}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    .line 5
    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mobileable"

    .line 6
    invoke-static {p0, v5}, Lcom/amap/api/mapcore/util/d5;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    iput-object v0, p1, Lcom/amap/api/mapcore/util/d5$a$f;->e:Ljava/lang/String;

    .line 8
    iput-object v1, p1, Lcom/amap/api/mapcore/util/d5$a$f;->f:Ljava/lang/String;

    .line 9
    iput-object v2, p1, Lcom/amap/api/mapcore/util/d5$a$f;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/amap/api/mapcore/util/d5$a$f;->a:Z

    .line 11
    invoke-static {v4, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/amap/api/mapcore/util/d5$a$f;->b:Z

    .line 12
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/mapcore/util/d5$a$f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "pes"

    .line 13
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static w()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->A()V

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/d5;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    sget-boolean v0, Lcom/amap/api/mapcore/util/d5;->d:Z

    if-nez v0, :cond_2

    return v2

    .line 6
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore/util/d5;->c:Landroid/content/Context;

    const-string v3, "IPV6_CONFIG_NAME"

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/d5;->z(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d5$c;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static x(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 5
    aget-object p0, p0, v0

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 7
    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    return p1
.end method

.method private static y(Ljava/net/InetAddress;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static declared-synchronized z(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;
    .locals 3

    const-class v0, Lcom/amap/api/mapcore/util/d5;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/d5;->d(Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_1
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/s6;

    invoke-direct {v1, p1}, Lcom/amap/api/mapcore/util/s6;-><init>(Ljava/lang/String;)V

    const-string p1, "i"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/amap/api/mapcore/util/s6;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/d5$c;->d(Ljava/lang/String;)Lcom/amap/api/mapcore/util/d5$c;

    move-result-object p0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "yyyyMMdd"

    invoke-static {v1, v2, p1}, Lcom/amap/api/mapcore/util/n5;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 7
    new-instance p0, Lcom/amap/api/mapcore/util/d5$c;

    const-string v2, "IPV6_CONFIG_NAME"

    invoke-direct {p0, v2, p1, v1}, Lcom/amap/api/mapcore/util/d5$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/d5$c;->b(Lcom/amap/api/mapcore/util/d5$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/d5$c;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/amap/api/mapcore/util/d5$c;->f(Lcom/amap/api/mapcore/util/d5$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    :cond_3
    sget-object p1, Lcom/amap/api/mapcore/util/d5;->e:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
