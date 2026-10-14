.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->t(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteTeachPointItemBinder$onBindViewHolder$2$1"
    f = "RouteTeachEditLogic.kt"
    l = {
        0x123,
        0x130,
        0x130,
        0x130
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $holder:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$holder:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$holder:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->label:I

    const-string v3, " uid: "

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;)Lcn/mucang/android/jiakaoyi/framework/h/c;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 5
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v18

    .line 6
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    const-wide v11, 0x416312d000000000L    # 1.0E7

    mul-double v9, v9, v11

    double-to-int v9, v9

    int-to-double v9, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v9, v9, v13

    div-double v19, v9, v11

    .line 7
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    mul-double v9, v9, v11

    double-to-int v0, v9

    int-to-double v9, v0

    mul-double v9, v9, v13

    div-double v21, v9, v11

    .line 8
    new-instance v9, Lcn/mucang/android/jiakaoyi/k3setting/e/a;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;-><init>()V

    .line 9
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 10
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    move-wide/from16 v13, v19

    move-wide/from16 v15, v21

    move/from16 v17, v18

    .line 11
    invoke-virtual/range {v9 .. v17}, Lcn/mucang/android/jiakaoyi/k3setting/e/a;->m(JLjava/lang/String;DDF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    new-instance v15, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$1;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    iget-object v13, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;

    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$holder:Lcn/mucang/android/jiakaoyi/framework/base/h;

    const/16 v23, 0x0

    move-object v9, v15

    move-wide/from16 v11, v19

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-wide/from16 v13, v21

    move-object v4, v15

    move/from16 v15, v18

    move-object/from16 v18, v23

    invoke-direct/range {v9 .. v18}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;DDFLcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lkotlin/coroutines/c;)V

    iput v7, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->label:I

    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6dfb\u52a0\u6559\u5b66\u70b9Gps\u5931\u8d25 teachId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_5
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v3, v4, v8}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v6, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->label:I

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    .line 15
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6dfb\u52a0\u6559\u5b66\u70b9Gps\u63a5\u53e3\u62a5\u9519 teachId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v3, v4, v8}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v5, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->label:I

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    .line 18
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    .line 19
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v4, v5, v8}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    return-object v2

    .line 20
    :cond_7
    :goto_4
    throw v0
.end method
