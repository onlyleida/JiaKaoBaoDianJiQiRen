.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/UnityDrawSender;",
        "",
        "()V",
        "draw",
        "",
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a()V
    .locals 34

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;->isOpen(J)Z

    move-result v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 5
    iget v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v7, v8, :cond_0

    if-ne v7, v9, :cond_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_5

    .line 6
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget-object v14, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    .line 7
    iget v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    const/4 v6, 0x3

    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    const-string v7, "#00FF00"

    goto :goto_1

    :cond_2
    const-string v7, "#FF8800"

    goto :goto_1

    :cond_3
    const-string v7, "#FF0000"

    :goto_1
    move-object v15, v7

    .line 8
    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    if-ne v4, v9, :cond_4

    const/16 v7, 0xc8

    const/16 v18, 0xc8

    goto :goto_2

    :cond_4
    const/16 v7, 0x1e

    const/16 v18, 0x1e

    :goto_2
    if-eq v4, v6, :cond_6

    if-ne v4, v9, :cond_5

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v19, 0x1

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0xf

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xe03

    const/16 v24, 0x0

    invoke-static/range {v10 .. v24}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    :goto_5
    if-le v5, v3, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    goto :goto_0

    .line 9
    :cond_8
    :goto_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->g:Ljava/util/List;

    const v18, 0x3dcccccd    # 0.1f

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_a

    :goto_7
    add-int/lit8 v4, v2, 0x1

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;

    .line 13
    sget-object v19, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 14
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/b;->b:Ljava/util/List;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v26, 0xf

    const/16 v27, 0x1e

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xf01

    const/16 v33, 0x0

    const v25, 0x3dcccccd    # 0.1f

    const-string v24, "#0000FF"

    move-object/from16 v23, v2

    .line 15
    invoke-static/range {v19 .. v33}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    if-le v4, v3, :cond_9

    goto :goto_8

    :cond_9
    move v2, v4

    goto :goto_7

    .line 16
    :cond_a
    :goto_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->n:Ljava/util/List;

    .line 17
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    const-string v0, "gpsList"

    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    .line 20
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 21
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v9, 0xf

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf01

    const/16 v16, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const-string v7, "#6200EE"

    .line 22
    invoke-static/range {v2 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_9

    .line 23
    :cond_b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 24
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->m:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_c

    goto :goto_b

    .line 25
    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    .line 26
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 27
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v9, 0xf

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf01

    const/16 v16, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const-string v7, "#0095FF"

    .line 28
    invoke-static/range {v2 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_a

    .line 29
    :cond_d
    :goto_b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->m:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    goto :goto_d

    .line 30
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    .line 31
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 32
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v10, 0xf

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf01

    const/16 v17, 0x0

    const-string v8, "#FF7D3C"

    move/from16 v9, v18

    .line 33
    invoke-static/range {v3 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_c

    :cond_f
    :goto_d
    return-void
.end method
