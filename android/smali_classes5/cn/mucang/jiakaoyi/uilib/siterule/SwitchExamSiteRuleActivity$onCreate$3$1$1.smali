.class final Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->s(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
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
        "examSiteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;"
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
.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    const-string v0, "examSiteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->g(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;)Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->l(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
