.class public final synthetic Lcn/mucang/jiakaoyi/uilib/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/q/h$c;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLcn/mucang/jiakaoyi/uilib/q/h$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->c:Lcn/mucang/jiakaoyi/uilib/q/h$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/a;->c:Lcn/mucang/jiakaoyi/uilib/q/h$c;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/q/h;->i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLcn/mucang/jiakaoyi/uilib/q/h$c;)V

    return-void
.end method
