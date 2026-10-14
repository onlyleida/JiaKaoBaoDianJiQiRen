.class final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1$1"
    f = "RuleDeductDiffActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $diffData:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic $examSiteId:J

.field final synthetic $isBackup:Z

.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field final synthetic $listener:Lf/a/a/a/j/c;

.field final synthetic $teaching:Z

.field final synthetic $totalCount:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:I

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;JZIZLf/a/a/a/j/c;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Landroid/content/Context;",
            "JZIZ",
            "Lf/a/a/a/j/c;",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$totalCount:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$diffData:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$context:Landroid/content/Context;

    iput-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$examSiteId:J

    iput-boolean p7, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$isBackup:Z

    iput p8, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$type:I

    iput-boolean p9, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$teaching:Z

    iput-object p10, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$listener:Lf/a/a/a/j/c;

    iput-object p11, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 13
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$totalCount:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$diffData:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$context:Landroid/content/Context;

    iget-wide v5, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$examSiteId:J

    iget-boolean v7, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$isBackup:Z

    iget v8, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$type:I

    iget-boolean v9, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$teaching:Z

    iget-object v10, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$listener:Lf/a/a/a/j/c;

    iget-object v11, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;JZIZLf/a/a/a/j/c;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$totalCount:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v0, "totalCount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$diffData:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "lastUpdateDate"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v5, p1

    .line 6
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$context:Landroid/content/Context;

    .line 8
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$examSiteId:J

    .line 9
    iget-boolean v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$isBackup:Z

    const-string p1, "lastTimeStr"

    .line 10
    invoke-static {v5, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$type:I

    .line 12
    iget-boolean v7, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$teaching:Z

    .line 13
    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$listener:Lf/a/a/a/j/c;

    .line 14
    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 15
    invoke-static/range {v0 .. v9}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->a(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;Landroid/content/Context;JZLjava/lang/String;IZLf/a/a/a/j/c;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    goto :goto_2

    .line 16
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$isBackup:Z

    if-eqz p1, :cond_2

    const-string p1, "\u672c\u6b21\u62a5\u5907\u6570\u636e\u4e0e\u4e0a\u6b21\u62a5\u5907\u6570\u636e\u4e00\u81f4\uff0c\u65e0\u9700\u62a5\u5907"

    goto :goto_1

    :cond_2
    const-string p1, "\u4f60\u7684\u6570\u636e\u4e0e\u670d\u52a1\u5546\u6570\u636e\u4e00\u81f4\uff0c\u65e0\u9700\u91cd\u7f6e"

    :goto_1
    move-object v2, p1

    .line 17
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 18
    iget-object v10, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion$launch$1$1;->$context:Landroid/content/Context;

    .line 19
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x4c

    const/4 v9, 0x0

    const-string v5, "\u786e\u5b9a"

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 20
    invoke-direct {p1, v10, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 22
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
