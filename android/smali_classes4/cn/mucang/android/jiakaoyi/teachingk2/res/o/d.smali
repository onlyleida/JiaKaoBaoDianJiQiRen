.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/io/File;)Ljava/util/List;
    .locals 6
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

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->toPolygon()Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    invoke-interface {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;-><init>()V

    .line 12
    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/d;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k(Ljava/util/List;)V

    return-void
.end method
