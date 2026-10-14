.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->g:Ljava/util/List;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;

    .line 4
    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->g:Ljava/util/List;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;

    .line 4
    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    return-object p0

    :cond_2
    return-object v2
.end method
