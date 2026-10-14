.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;


# direct methods
.method public synthetic constructor <init>(ZLcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q;->a:Z

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q;->a:Z

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;->o(ZLcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l0;)V

    return-void
.end method
