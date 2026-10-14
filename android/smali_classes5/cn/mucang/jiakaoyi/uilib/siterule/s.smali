.class public final synthetic Lcn/mucang/jiakaoyi/uilib/siterule/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/s;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/s;->b:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/s;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/s;->b:Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->w(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;)V

    return-void
.end method
