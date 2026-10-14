.class final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->c(Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;)V
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
    c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1"
    f = "RuleDeductDiffActivity.kt"
    l = {
        0x62,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $examSiteId:J

.field final synthetic $isBackup:Z

.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field final synthetic $listener:Lf/a/a/a/j/c;

.field final synthetic $teaching:Z

.field final synthetic $type:I

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JIZZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;Landroid/content/Context;Lf/a/a/a/j/c;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "JIZZ",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Landroid/content/Context;",
            "Lf/a/a/a/j/c;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$examSiteId:J

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$type:I

    iput-boolean p5, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$isBackup:Z

    iput-boolean p6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$teaching:Z

    iput-object p7, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p8, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iput-object p9, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$listener:Lf/a/a/a/j/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 11
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$examSiteId:J

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$type:I

    iget-boolean v5, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$isBackup:Z

    iget-boolean v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$teaching:Z

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$listener:Lf/a/a/a/j/c;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JIZZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;Landroid/content/Context;Lf/a/a/a/j/c;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "totalCount"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/diff/k;

    iget-object v6, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v3, v6}, Lcn/mucang/jiakaoyi/uilib/diff/k;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    iget-wide v6, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$examSiteId:J

    iget v8, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$type:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$isBackup:Z

    invoke-virtual {v3, v6, v7, v8, v9}, Lcn/mucang/jiakaoyi/uilib/diff/k;->m(JLjava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 5
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    iget-wide v6, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$examSiteId:J

    invoke-static {v6, v7}, Lcn/mucang/jiakaoyi/uilib/diff/j;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v0, v3, :cond_8

    iget v0, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$type:I

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_8

    const-string v0, "instructionConfigList"

    .line 8
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 10
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 14
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    move-result-object v6

    const-string v7, "configEntity.transform()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iget-boolean v0, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$teaching:Z

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "it.step"

    if-eqz v0, :cond_5

    .line 18
    :try_start_2
    sget-object v10, Lcn/mucang/jiakaoyi/uilib/rule/d0;->a:Lcn/mucang/jiakaoyi/uilib/rule/d0;

    iget-object v11, v8, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-virtual {v10, v11, v8}, Lcn/mucang/jiakaoyi/uilib/rule/d0;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Z

    move-result v8

    goto :goto_2

    .line 19
    :cond_5
    sget-object v10, Lcn/mucang/jiakaoyi/uilib/rule/d0;->a:Lcn/mucang/jiakaoyi/uilib/rule/d0;

    iget-object v11, v8, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v8, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-virtual {v10, v11, v8}, Lcn/mucang/jiakaoyi/uilib/rule/d0;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 20
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;

    iget-object v11, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v14, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iget-wide v6, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$examSiteId:J

    iget-boolean v8, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$isBackup:Z

    iget v9, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$type:I

    iget-boolean v15, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$teaching:Z

    iget-object v10, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$listener:Lf/a/a/a/j/c;

    iget-object v4, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/16 v22, 0x0

    move-object/from16 v20, v10

    move-object v10, v3

    move/from16 v19, v15

    move-wide v15, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v21, v4

    invoke-direct/range {v10 .. v22}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;JZIZLf/a/a/a/j/c;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    iput v5, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->label:I

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v2, :cond_9

    return-object v2

    .line 23
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$2;

    iget-object v4, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    iput v4, v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->label:I

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    return-object v2

    .line 25
    :cond_9
    :goto_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
