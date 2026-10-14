.class public final Lcn/mucang/android/jiakaoyi/teachingk2/res/o/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/processor/PodingAreaProcessor;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$ResourceProcessor;",
        "()V",
        "process",
        "",
        "file",
        "Ljava/io/File;",
        "examSiteId",
        "",
        "transform",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/q/g;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PodingAreaProcessor"

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 7
    const-class v5, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    invoke-virtual {p1, v3, v5}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->toPolygon()Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object v3

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    invoke-interface {v0, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v7, "converter.gpsToGauss(g)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;-><init>()V

    .line 13
    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-le v4, v2, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method public a(Ljava/io/File;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/i;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->o(Ljava/util/List;)V

    return-void
.end method
