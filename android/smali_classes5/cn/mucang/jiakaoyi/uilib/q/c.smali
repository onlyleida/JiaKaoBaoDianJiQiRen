.class public final synthetic Lcn/mucang/jiakaoyi/uilib/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/d;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->a:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-boolean p4, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->a:Landroidx/appcompat/app/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/q/c;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/q/h;->k(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    return-void
.end method
