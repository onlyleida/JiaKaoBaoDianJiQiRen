.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u001b\u001a\u00020\u001cJ\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u000e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u0014J@\u0010#\u001a\u00020\u001c2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\'\u001a\u0004\u0018\u00010%2\u0008\u0010(\u001a\u0004\u0018\u00010%2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001eH\u0002J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u0014J\u000e\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0014J\u0006\u0010.\u001a\u00020\u000cJ\u0006\u0010/\u001a\u00020\u001cJ\u0006\u00100\u001a\u00020\u001cJ\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020\u001c2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001eH\u0002J\u0008\u00105\u001a\u00020\u001cH\u0002R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "posCheck",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachPosCheck;)V",
        "boundaryList",
        "Ljava/util/LinkedHashMap;",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Rectangle;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "Lkotlin/collections/LinkedHashMap;",
        "currentBoundary",
        "hasSelect",
        "",
        "getHasSelect",
        "()Z",
        "setHasSelect",
        "(Z)V",
        "naviRoute",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
        "pathIndex",
        "",
        "routeList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;",
        "selectRoute",
        "canTriggerBoundary",
        "boundDetector",
        "clear",
        "",
        "getAutoPath",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
        "getNextPath",
        "getNextStepId",
        "stepId",
        "handleNaviPath",
        "naviStart",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "naviStart2",
        "naviEnd",
        "startPos",
        "naviPath",
        "handleRoute",
        "select",
        "handleSelect",
        "selectType",
        "hasRouteData",
        "loadData",
        "notifySuccess",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "sendNaviData",
        "sendRouteData",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

.field private f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;)V
    .locals 1

    const-string v0, "posCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    return-void
.end method

.method private final g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    const-wide v0, 0x4072c00000000000L    # 300.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    const-string p3, "\u5bfc\u822a\u7ec8\u70b9\u8ddd\u79bb\u8def\u7ebf\u8d77\u70b9\u4f4d\u7f6e\u4e0d\u8db33\u7c73\uff0c\u76f4\u63a5\u751f\u6210\u51c6\u5907\u533a"

    .line 2
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->u(Ljava/util/List;)V

    const-wide p3, 0x4082c00000000000L    # 600.0

    .line 4
    invoke-static {p2, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    const-wide p3, 0x406f400000000000L    # 250.0

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->r(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    const-string p3, "rectangle"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->r(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->o()V

    return-void

    .line 8
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "\u5bfc\u822a\u8def\u7ebf\u8ddd\u79bb\u8def\u7ebf\u8d77\u70b9\u4f4d\u7f6e\u8d85\u51fa3\u7c73:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u5bfc\u822a\u8def\u7ebf\u4e0d\u8db32\u4e2a\u70b9"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->o()V

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->u(Ljava/util/List;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;-><init>()V

    const-string v2, "currentPos"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/f;->m(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_get_planned_rout_fail:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u89c4\u5212\u8def\u7ebf\u5931\u8d25:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    move-object v8, v0

    :goto_1
    if-nez v8, :cond_1

    :goto_2
    move-object v3, v1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getSections()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->getPoints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->toPos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object v3, v0

    :goto_3
    const/4 v0, 0x1

    if-nez v8, :cond_6

    :goto_4
    move-object v2, v1

    goto :goto_5

    .line 8
    :cond_6
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getSections()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->getPoints()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v2, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->toPos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_10

    if-nez v8, :cond_b

    :goto_6
    move-object v4, v1

    goto :goto_7

    .line 9
    :cond_b
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getSections()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v2, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->getPoints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {v0}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->toPos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object v4, v0

    goto :goto_7

    :cond_10
    move-object v4, v2

    :goto_7
    if-nez v8, :cond_11

    :goto_8
    move-object v5, v1

    goto :goto_9

    .line 10
    :cond_11
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getSections()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    invoke-static {v0}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;->getPoints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_8

    :cond_14
    invoke-static {v0}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;

    if-nez v0, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->toPos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object v5, v0

    .line 11
    :goto_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/w;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$naviPath"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p5, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, p5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 2
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->e:Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object p3

    :cond_0
    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->g(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->w(Z)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->r(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->s(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/r0/c/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/c/a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/c/a;->m()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u670d\u52a1\u5668\u914d\u7f6e\u8def\u7ebf\u793a\u6559\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x6761

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;

    .line 6
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 7
    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;

    .line 8
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;->getStepId()I

    move-result v9

    .line 9
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v9, v10, :cond_6

    .line 10
    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    goto :goto_2

    .line 11
    :cond_6
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v9, v10, :cond_7

    .line 12
    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    goto :goto_2

    .line 13
    :cond_7
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v9, v10, :cond_8

    .line 14
    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    goto :goto_2

    .line 15
    :cond_8
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v9, v10, :cond_9

    .line 16
    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    goto :goto_2

    .line 17
    :cond_9
    iget-object v9, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    .line 18
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    .line 19
    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;->getStepKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_5

    const-string v5, "\u914d\u7f6e\u7684\u5e93\u4f4d\u5728\u5730\u56fe\u91cc\u5339\u914d\u4e0d\u4e0a,\u914d\u7f6e\u7684 key:"

    .line 20
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;->getStepKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_3

    .line 21
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    :goto_6
    const-string v0, "\u6700\u7ec8\u4f7f\u7528\u7684\u793a\u6559\u8def\u7ebf\u6761\u6570\uff1a"

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;

    .line 26
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;-><init>()V

    .line 27
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->getExamSiteRoute()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;

    move-result-object v5

    if-nez v5, :cond_e

    move-object v5, v2

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;->getRouteName()Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xa

    if-nez v5, :cond_f

    move-object v7, v2

    goto :goto_a

    .line 29
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 31
    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;

    .line 32
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;->getStepKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 33
    :cond_10
    :goto_a
    invoke-virtual {v4, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setRouteSteps(Ljava/util/List;)V

    .line 34
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_11

    move-object v7, v2

    goto :goto_c

    .line 35
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 37
    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;

    .line 38
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;->getStepId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 39
    :cond_12
    :goto_c
    invoke-virtual {v4, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setStepIds(Ljava/util/List;)V

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setItemList(Ljava/util/List;)V

    .line 41
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_13

    move-object v6, v2

    goto :goto_d

    :cond_13
    invoke-static {v6}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_d
    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->h(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setStart(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 42
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_14

    move-object v6, v2

    goto :goto_e

    :cond_14
    invoke-static {v6}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_e
    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->f(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->setEnd(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 43
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->getExamSiteRoute()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;

    move-result-object v3

    if-nez v3, :cond_15

    move-object v3, v2

    goto :goto_f

    :cond_15
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;->getNavigationPoint()Ljava/lang/String;

    move-result-object v3

    :goto_f
    const-class v5, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerNavigationPoint;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    const-string v5, "pathList"

    .line 44
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 46
    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerNavigationPoint;

    .line 47
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;-><init>()V

    .line 48
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerNavigationPoint;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerNavigationPoint;->getPath()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->setPath(Ljava/util/List;)V

    .line 50
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 51
    :cond_16
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 52
    :cond_17
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/v;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/v;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception p0

    .line 53
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u8bf7\u6c42\u793a\u6559\u8def\u7ebf\u5931\u8d25:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    :goto_11
    return-void
.end method

.method private static final s(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V
    .locals 1

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private final u(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Navi:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->data:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method private final v()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->data:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    :goto_3
    return v2
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    .line 3
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->setHasSend(Z)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->e:Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->h:Z

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->e:Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;->getPosList()Ljava/util/List;

    move-result-object v1

    .line 3
    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 7
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v6, v6

    iput-short v6, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    const/4 v6, 0x0

    .line 8
    iput-byte v6, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v2, v7}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v4

    const-string v7, "converter.gaussToGps(Pos(it.x, it.y))"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v4

    .line 11
    aget-wide v6, v4, v6

    iput-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v6, 0x1

    .line 12
    aget-wide v6, v4, v6

    iput-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    :goto_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v1

    :cond_4
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "addCurrentToStartPath(li\u2026, posList ?: emptyList())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->h:Z

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u4e0b\u4e00\u4e2a\u8def\u7ebf\uff0c\u5728\u5e93\u4f4d\u51c6\u5907\u533a\uff0c\u53d1\u9001\u6807\u51c6\u8f68\u8ff9:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->e(Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "transform(TeachData.inst\u2026[currentBoundary!!.step])"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    .line 6
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->getHasSend()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    const-string v1, "\u83b7\u53d6\u4e0b\u4e00\u4e2a\u8def\u7ebf\uff0c\u5168\u90e8\u5df2\u53d1\u9001\uff0c\u8fd4\u56de\u7a7a"

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 9
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v5

    invoke-interface {v5}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v6, -0x1

    .line 12
    iput v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 13
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v10, 0x0

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_b

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    .line 15
    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->getPath()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_8

    :goto_3
    move-object v12, v10

    goto :goto_4

    :cond_8
    invoke-static {v12}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v12, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v12, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    :goto_4
    if-eqz v12, :cond_a

    .line 16
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpg-double v16, v14, v7

    if-gez v16, :cond_a

    .line 17
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 18
    iput v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    :cond_a
    move v11, v13

    goto :goto_2

    .line 19
    :cond_b
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v10

    .line 20
    :cond_c
    :goto_5
    iget v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    if-le v5, v6, :cond_10

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpl-double v9, v7, v5

    if-ltz v9, :cond_10

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    invoke-static {v1, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    :goto_6
    if-nez v10, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v10, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->setHasSend(Z)V

    :goto_7
    const-string v1, "\u83b7\u53d6\u4e0b\u4e00\u4e2a\u8def\u7ebf\uff0c\u8def\u7ebf\u8d77\u70b9\u8ddd\u79bb\u8f66\u5b50\u8d85\u51fa10\u7c73\u4e86\uff0c\u4e0d\u4f7f\u7528"

    .line 22
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 24
    :cond_10
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    if-nez v5, :cond_11

    :goto_8
    move-object v5, v10

    goto :goto_9

    :cond_11
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_8

    :cond_12
    iget v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    invoke-static {v5, v6}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    .line 25
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u4e0b\u4e00\u4e2a\u8def\u7ebf index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\uff0c\u8ddd\u79bb\u6700\u8fd1\u7684\u8def\u7ebf\u8d77\u70b9:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_13

    :goto_a
    move-object v7, v10

    goto :goto_b

    :cond_13
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->getPath()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_14

    goto :goto_a

    :cond_14
    invoke-static {v7}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    if-nez v5, :cond_15

    goto :goto_d

    .line 26
    :cond_15
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->getPath()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_16

    goto :goto_d

    .line 27
    :cond_16
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 29
    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    int-to-short v9, v9

    iput-short v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    .line 30
    iput-byte v2, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 31
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v9, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v7

    const-string v9, "converter.gaussToGps(Pos(it.x, it.y))"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-wide v11, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v13, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->i(DD)[D

    move-result-object v7

    .line 33
    aget-wide v11, v7, v2

    iput-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 34
    aget-wide v11, v7, v3

    iput-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 35
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 36
    :cond_17
    :goto_d
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v5, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->getPath()Ljava/util/List;

    move-result-object v10

    :goto_e
    if-nez v10, :cond_19

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v10

    :cond_19
    invoke-static {v1, v2, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "addCurrentToStartPath(li\u2026ute?.path ?: emptyList())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getStepIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    if-le p1, v1, :cond_5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getStepIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    :goto_2
    return v1
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getRouteSteps()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->s(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_route_data_error:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/x;

    invoke-direct {v2, v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/x;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_planning_route:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_planning_route_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final k(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->v()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->p()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->o()V

    :goto_0
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "boundaryList.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5f15\u5bfc\u7ebf\u53d1\u9001\u6210\u529f:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->g:I

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;->setHasSend(Z)V

    :goto_1
    return-void
.end method

.method public final w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->h:Z

    return-void
.end method
