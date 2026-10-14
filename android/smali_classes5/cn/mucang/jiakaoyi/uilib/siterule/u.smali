.class public final synthetic Lcn/mucang/jiakaoyi/uilib/siterule/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/u;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/u;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->y(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
