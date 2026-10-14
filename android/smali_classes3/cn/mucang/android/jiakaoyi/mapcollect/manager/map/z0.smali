.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/PreviewSimpleModel;",
        "",
        "()V",
        "bound",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Bound;",
        "getBound",
        "()Lcn/mucang/android/jiakaoyi/signal/pos/Bound;",
        "daoku",
        "",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/c2/C2DaoKuCollision;",
        "getDaoku",
        "()Ljava/util/List;",
        "dk",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;",
        "json",
        "",
        "getJson",
        "()Ljava/lang/String;",
        "renderDaoku",
        "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;",
        "getRenderDaoku",
        "createConverter",
        "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;",
        "getPoints",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "parseExamSiteData",
        "",
        "mapcollect_release"
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c:Ljava/util/List;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v6, -0x10000000000001L

    const-wide v8, -0x10000000000001L

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const-string v0, "{\n\t\"cheKuIsLeft\": true,\n\t\"gps1\": {\n\t\t\"altitude\": 30.39484977722168,\n\t\t\"latitude\": 30.467718429333335,\n\t\t\"longitude\": 114.41054570233334\n\t},\n\t\"gps2\": {\n\t\t\"altitude\": 30.303199768066406,\n\t\t\"latitude\": 30.467728068333336,\n\t\t\"longitude\": 114.41061255058332\n\t},\n\t\"gps3\": {\n\t\t\"altitude\": 30.28090000152588,\n\t\t\"latitude\": 30.467786016083334,\n\t\t\"longitude\": 114.41060374041666\n\t},\n\t\"gps4\": {\n\t\t\"altitude\": 30.279150009155273,\n\t\t\"latitude\": 30.46779316325,\n\t\t\"longitude\": 114.41065361916667\n\t},\n\t\"gps5\": {\n\t\t\"altitude\": 30.287349700927734,\n\t\t\"latitude\": 30.467813735166665,\n\t\t\"longitude\": 114.41065022625\n\t},\n\t\"gps6\": {\n\t\t\"altitude\": 30.288650512695313,\n\t\t\"latitude\": 30.467806713166667,\n\t\t\"longitude\": 114.41059988041667\n\t},\n\t\"gps7\": {\n\t\t\"altitude\": 30.293149948120117,\n\t\t\"latitude\": 30.46786444875,\n\t\t\"longitude\": 114.41058774933333\n\t},\n\t\"gps8\": {\n\t\t\"altitude\": 30.322750091552734,\n\t\t\"latitude\": 30.467855448583332,\n\t\t\"longitude\": 114.41052074716667\n\t},\n\t\"lineWidth\": 15.0,\n\t\"name\": \"\u5012\u8f66\u5165\u5e93-2\",\n\t\"stepId\": 102,\n\t\"time\": 1605512408905\n}"

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->e:Ljava/lang/String;

    return-void
.end method

.method private final a()Lcn/mucang/android/jiakaoyi/signal/i/a;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 5
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-double/2addr v4, v6

    iput-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    int-to-double v5, v2

    div-double/2addr v3, v5

    iput-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 8
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    div-double/2addr v2, v5

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-object v0
.end method

.method private final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    const-string v3, "d.giveOnePointToCalZero()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->a:Ljava/util/List;

    return-object v0
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->e:Ljava/lang/String;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "parseObject(json, C2DaoKuSrcData::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->a()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;->c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    const-string v3, "converter.zeroGps"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b:Ljava/util/List;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    move-result-object v2

    const-string v4, "d.createCollision(converter, d.name)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    move-result-object v3

    const-string v4, "d.createRender()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_1

    :cond_3
    return-void
.end method
