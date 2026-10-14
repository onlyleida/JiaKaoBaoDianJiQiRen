.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;
    }
.end annotation


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private static b:J

.field private static volatile c:Z

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/a;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->b:J

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->c:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const-string v2, "site_model_data_list"

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->g(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->c:Z

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_enter_other_site:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auto_switch_site:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    aput-object v4, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/e;

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 3
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v8, v2

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    const/4 v13, 0x1

    cmpl-double v14, v11, v6

    move-wide v15, v4

    if-lez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget-wide v3, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpl-double v5, v3, v6

    if-lez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eq v14, v13, :cond_3

    iget-wide v13, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    move/from16 p0, v0

    iget-wide v0, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v13, v0

    sub-double v17, v6, v11

    mul-double v13, v13, v17

    sub-double/2addr v3, v11

    div-double/2addr v13, v3

    add-double/2addr v13, v0

    cmpg-double v0, v15, v13

    if-gez v0, :cond_4

    xor-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move/from16 p0, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move-object/from16 v1, p1

    move v8, v2

    move-wide v4, v15

    const/4 v3, 0x0

    move v2, v0

    move/from16 v0, p0

    goto :goto_0

    :cond_5
    return v9
.end method

.method private static c(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/m;->j(Ljava/io/File;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->c:Z

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->b:J

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p0

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static e(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u5207\u6362\u8003\u573a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/g;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->f:Ljava/util/Map;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {p0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-wide v4, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v6, v6, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    :cond_6
    const/4 p0, 0x0

    .line 12
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->a(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static g(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Ljava/io/File;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryUrl:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryMd5:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    :try_start_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->boundaryMd5:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method static synthetic i(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/d;

    invoke-direct {v1, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/d;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8003\u573a\u8fb9\u754c\u68c0\u6d4b\u5d29\u6e83:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e37

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->b(I)V

    const-wide/16 v0, 0x1f4

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->r()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$a;)V

    :goto_0
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->f()V

    return-void
.end method

.method static synthetic l(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/Boolean;)Lkotlin/v;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->e(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u5207\u6362\u8003\u573a\u5230:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\u5f53\u524d\u8003\u573a:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->d:Ljava/util/Map;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m()V
    .locals 9

    const-string v0, ":"

    const-string v1, "\u52a0\u8f7d"

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    :try_start_0
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/h0;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->q()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u8003\u573a\u8fb9\u754c\u6570\u636e\u5931\u8d25:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    :cond_0
    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 9
    :try_start_1
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->g(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->c(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u8fb9\u754c\u6570\u636e\u5b8c\u6210"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u8fb9\u754c\u6570\u636e\u5931\u8d25:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->a:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method
