.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;


# direct methods
.method public synthetic constructor <init>(ZZLcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->a:Z

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->a:Z

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;->p(ZZLcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;)V

    return-void
.end method
