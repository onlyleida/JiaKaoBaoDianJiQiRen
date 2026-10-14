.class public final synthetic Lcn/mucang/jiakaoyi/uilib/siterule/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/w;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->b(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method
