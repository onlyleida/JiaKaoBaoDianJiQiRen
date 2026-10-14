.class public final synthetic Lcn/mucang/jiakaoyi/uilib/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/d;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->a:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->c:Z

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->d:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->a:Landroidx/appcompat/app/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->c:Z

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/s/d;->d:Lkotlin/jvm/b/l;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->p(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V

    return-void
.end method
