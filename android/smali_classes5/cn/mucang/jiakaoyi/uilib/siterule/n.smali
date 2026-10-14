.class public final synthetic Lcn/mucang/jiakaoyi/uilib/siterule/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/siterule/e0;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->a:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->b:Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->a:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->b:Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/n;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->r(Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;Lcn/mucang/jiakaoyi/uilib/siterule/e0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
