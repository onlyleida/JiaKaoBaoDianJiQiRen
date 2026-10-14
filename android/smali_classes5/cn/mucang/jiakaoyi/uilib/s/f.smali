.class public final synthetic Lcn/mucang/jiakaoyi/uilib/s/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/f;->a:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/s/f;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/s/f;->a:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/s/f;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j$a;->c(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method
