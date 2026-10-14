.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/o/j;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/q/g;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->toPolygon()Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object v2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
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

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/j;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->g:Ljava/util/List;

    return-void
.end method
