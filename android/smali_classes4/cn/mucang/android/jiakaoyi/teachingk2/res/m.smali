.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-direct {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
