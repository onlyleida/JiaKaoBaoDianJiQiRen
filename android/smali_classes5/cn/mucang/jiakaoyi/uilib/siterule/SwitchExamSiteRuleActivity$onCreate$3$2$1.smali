.class final Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


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
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/d0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1$1$1;

    invoke-direct {v3, v1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {v0, v3}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;->y(Lkotlin/jvm/b/l;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddRuleExamSite"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
