.class public final synthetic Lcn/mucang/jiakaoyi/uilib/siterule/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->a:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->a:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/z;->c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->j(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V

    return-void
.end method
