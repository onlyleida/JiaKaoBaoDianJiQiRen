.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/l;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->C(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$d;Ljava/util/List;)V

    return-void
.end method
