.class final Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper$init$1"
    f = "TrafficHelper.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field J$1:J

.field J$2:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v0, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->label:I

    const-string v3, "recent_traffic"

    const-string v4, "mc-traffic"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_0

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$2:J

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$1:J

    iget-wide v11, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$0:J

    iget v0, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->I$0:I

    iget-object v13, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$2:Ljava/lang/Object;

    check-cast v14, Landroid/app/Application;

    iget-object v15, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/i0;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v5, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/i0;

    .line 4
    invoke-static {v4}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, ""

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v0

    .line 5
    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$b;-><init>()V

    new-array v9, v8, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v7, v0, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v7, "recentMap.entries"

    const/16 v9, 0x1e

    if-le v0, v9, :cond_4

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$a;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1$a;-><init>()V

    invoke-static {v0, v10}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-interface {v0, v8, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v9, "it.value"

    if-nez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    move-object v10, v7

    check-cast v10, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 19
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 20
    move-object v13, v12

    check-cast v13, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v15, v10, v13

    if-gez v15, :cond_8

    move-object v7, v12

    move-wide v10, v13

    .line 22
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 23
    :goto_2
    check-cast v7, Ljava/util/Map$Entry;

    if-nez v7, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TrafficHelper] \u6700\u8fd130\u5929\u5cf0\u503c\uff1a"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v9, 0xff08

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0xff09

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    :cond_a
    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 26
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->f(J)V

    .line 27
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v9

    .line 28
    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v10, "mPm.getApplicationInfo(c.packageName, 0)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_4
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    .line 33
    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    add-long v14, v10, v12

    .line 34
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->e(J)V

    move-object v5, v1

    move v0, v8

    move-wide/from16 v34, v14

    move-object v15, v7

    move-object v14, v9

    move-wide/from16 v7, v34

    move-wide/from16 v36, v12

    const/4 v13, 0x0

    move-wide v11, v10

    move-wide/from16 v9, v36

    .line 35
    :goto_5
    invoke-static {v6}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const-wide/16 v3, 0x7530

    .line 36
    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$0:Ljava/lang/Object;

    iput-object v15, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$1:Ljava/lang/Object;

    iput-object v14, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$2:Ljava/lang/Object;

    iput-object v13, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->L$3:Ljava/lang/Object;

    iput v0, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->I$0:I

    iput-wide v11, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$0:J

    iput-wide v9, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$1:J

    iput-wide v7, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->J$2:J

    const/4 v1, 0x1

    iput v1, v5, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$init$1;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_b

    return-object v2

    .line 37
    :cond_b
    :goto_6
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    move-object/from16 p1, v2

    .line 38
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    sub-long v5, v3, v11

    move-wide/from16 v21, v11

    sub-long v11, v1, v9

    move/from16 v23, v0

    const-string v0, "otherTraffic.entries"

    if-nez v13, :cond_10

    .line 39
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->b()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v24

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    move-wide/from16 v26, v9

    invoke-virtual/range {v25 .. v25}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ai"

    move-object/from16 v25, v13

    const/4 v13, 0x1

    invoke-static {v9, v10, v13}, Lkotlin/text/l;->E(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v13, v25

    move-wide/from16 v9, v26

    goto :goto_7

    :cond_d
    move-wide/from16 v26, v9

    const/4 v13, 0x1

    const/16 v24, 0x0

    :goto_8
    check-cast v24, Ljava/util/Map$Entry;

    if-nez v24, :cond_e

    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_e
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    if-nez v9, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v9

    goto :goto_a

    :cond_10
    move-wide/from16 v26, v9

    move-object v9, v13

    const/4 v13, 0x1

    :goto_a
    add-long v24, v3, v1

    const-wide/16 v28, 0x0

    if-nez v9, :cond_11

    move-wide/from16 v30, v28

    goto :goto_b

    .line 40
    :cond_11
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v30

    :goto_b
    sub-long v24, v24, v30

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v10

    const-string v13, "today"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v13

    .line 42
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    if-nez v30, :cond_12

    move-object/from16 v31, v9

    .line 43
    invoke-static/range {v28 .. v29}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v9

    .line 44
    invoke-interface {v13, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v30, v9

    goto :goto_c

    :cond_12
    move-object/from16 v31, v9

    .line 45
    :goto_c
    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->longValue()J

    move-result-wide v32

    add-long v32, v32, v24

    sub-long v32, v32, v7

    .line 46
    invoke-static/range {v32 .. v33}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v10, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->a()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xdbba0

    cmp-long v13, v7, v9

    if-ltz v13, :cond_16

    .line 48
    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->e(J)V

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TrafficHelper] \u7edf\u8ba1\u8fd0\u884c\u65f6\u95f4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->d()J

    move-result-wide v32

    sub-long v9, v9, v32

    const/16 v13, 0x3e8

    move-wide/from16 v32, v11

    int-to-long v11, v13

    div-long/2addr v9, v11

    const/16 v11, 0x3c

    int-to-long v11, v11

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u949f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\u672c\u6b21\u5f00\u673a  \u63a5\u6536\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   \u53d1\u9001\uff1a"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u672c\u6b21\u5e94\u7528  \u63a5\u6536\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v32

    invoke-static {v14, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v2, v28

    if-lez v4, :cond_13

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u672c\u6b21\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u3011\u603b\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 57
    :cond_14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_e

    :cond_15
    invoke-static/range {v28 .. v29}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v0

    :goto_e
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v14, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n\u5f53\u65e5(\u9664\u53bbai\u89c6\u9891)\u603b\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 59
    :cond_16
    invoke-static/range {v18 .. v18}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-wide/from16 v11, v21

    move/from16 v0, v23

    move-wide/from16 v7, v24

    move-wide/from16 v9, v26

    move-object/from16 v13, v31

    move-object/from16 v2, p1

    goto/16 :goto_5

    .line 60
    :cond_17
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
