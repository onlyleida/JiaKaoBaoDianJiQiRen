.class final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1;-><init>(ILcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $teaching:Z

.field final synthetic $type:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;


# direct methods
.method constructor <init>(ILcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Z)V
    .locals 0

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->$type:I

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->$teaching:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->invoke(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->$type:I

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ruleDeductViewModel"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->k(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->$teaching:Z

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->s(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$init$stepAdapter$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->k(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;)Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->q(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
