.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\rJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0007J&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u0014\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveHelper;",
        "",
        "()V",
        "TAG",
        "",
        "destMap",
        "Ljava/util/HashMap;",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "Lkotlin/collections/HashMap;",
        "checkCarCondition",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/model/CarCheckResult;",
        "converterPath",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
        "posList",
        "getDestPos",
        "areaId",
        "getDistanceXPath",
        "",
        "startPos",
        "path",
        "offsetMax",
        "",
        "setShuttleDestData",
        "",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;DILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide p3, 0x407f400000000000L    # 500.0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;D)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_emergency_stop_button_not_closed:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_abnormal:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq v2, v3, :cond_3

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_not_stop:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 11
    :cond_3
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_4

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_gearN:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 13
    :cond_4
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_push_handbrake:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 15
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    const/4 v1, 0x1

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_status_isok:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 16
    :cond_6
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_status_abnormal:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/t/a;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 5
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v5, v5

    iput-short v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    const/4 v5, 0x0

    .line 6
    iput-byte v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 7
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v6, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    const-string v6, "converter.gaussToGps(Pos(it.x, it.y))"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v3

    .line 9
    aget-wide v5, v3, v5

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v5, 0x1

    .line 10
    aget-wide v5, v3, v5

    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez p1, :cond_2

    .line 13
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p1

    .line 14
    :cond_2
    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "addCurrentToStartPath(\n \u2026 ?: emptyList()\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(J)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b:Ljava/util/HashMap;

    const-string v1, "AutoDriveHelper: getDestPos "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p1
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;D)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;D)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "startPos"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    mul-double v2, p3, p3

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    if-ltz v6, :cond_1

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 3
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v10, v12

    .line 4
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v14, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v12, v14

    mul-double v10, v10, v10

    mul-double v12, v12, v12

    add-double/2addr v10, v12

    cmpg-double v8, v10, v2

    if-gez v8, :cond_0

    move v7, v6

    move-wide v2, v10

    :cond_0
    move v6, v9

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    if-gez v7, :cond_3

    const-string v0, "AutoDriveHelper: targetIndex=-1"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v5

    .line 7
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    if-ge v7, v0, :cond_5

    :goto_1
    add-int/lit8 v4, v7, 0x1

    .line 8
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    add-double/2addr v2, v5

    if-lt v4, v0, :cond_4

    goto :goto_2

    :cond_4
    move v7, v4

    goto :goto_1

    :cond_5
    :goto_2
    double-to-int v0, v2

    return v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b:Ljava/util/HashMap;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;->id:Ljava/lang/Long;

    const-string v3, "it.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "it.pos"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->b:Ljava/util/HashMap;

    const-string v0, "AutoDriveHelper: setShuttleDestData "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
